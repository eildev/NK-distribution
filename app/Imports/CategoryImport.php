<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use App\Models\Category;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class CategoryImport implements ToCollection, WithHeadingRow
{
    /**
     * @param Collection $collection
     */
    public function collection(Collection $rows)
    {
        // dd($rows);
        foreach ($rows as $row) {
            if (isset($row['name'])) {
                $cat = Category::where('name', $row['name'])->first();
                // dd($cat);
                if ($cat) {
                    $cat->update([
                        // 'id' => $row['id'],
                        'name' => $row['name'],

                    ]);
                } else {
                    Category::create([
                        // 'id' => $row['id'],
                        'name' => $row['name'],
                    ]);
                }
            } else {
                $notification = array(
                    'warning' => 'Not Inserved',
                    'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }
        }
    }
}
