<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $permissions = [
            ['id' => 1, 'name' => 'pos.menu', 'guard_name' => 'web', 'group_name' => 'pos'],

            ['id' => 2, 'name' => 'pos-manage.menu', 'guard_name' => 'web', 'group_name' => 'pos-manage'],
            ['id' => 3, 'name' => 'pos-manage.invoice', 'guard_name' => 'web', 'group_name' => 'pos-manage'],
            ['id' => 4, 'name' => 'pos-manage.edit', 'guard_name' => 'web', 'group_name' => 'pos-manage'],
            ['id' => 5, 'name' => 'pos-manage.delete', 'guard_name' => 'web', 'group_name' => 'pos-manage'],

            ['id' => 6, 'name' => 'products.menu', 'guard_name' => 'web', 'group_name' => 'products'],
            ['id' => 7, 'name' => 'products.list', 'guard_name' => 'web', 'group_name' => 'products'],
            ['id' => 8, 'name' => 'products.edit', 'guard_name' => 'web', 'group_name' => 'products'],
            ['id' => 9, 'name' => 'products.delete', 'guard_name' => 'web', 'group_name' => 'products'],

            ['id' => 10, 'name' => 'category.menu', 'guard_name' => 'web', 'group_name' => 'category'],
            ['id' => 11, 'name' => 'category.edit', 'guard_name' => 'web', 'group_name' => 'category'],
            ['id' => 12, 'name' => 'category.delete', 'guard_name' => 'web', 'group_name' => 'category'],

            ['id' => 13, 'name' => 'subcategory.menu', 'guard_name' => 'web', 'group_name' => 'sub-category'],
            ['id' => 14, 'name' => 'subcategory.edit', 'guard_name' => 'web', 'group_name' => 'sub-category'],
            ['id' => 15, 'name' => 'subcategory.delete', 'guard_name' => 'web', 'group_name' => 'sub-category'],

            ['id' => 16, 'name' => 'brand.menu', 'guard_name' => 'web', 'group_name' => 'brand'],
            ['id' => 17, 'name' => 'brand.edit', 'guard_name' => 'web', 'group_name' => 'brand'],
            ['id' => 18, 'name' => 'brand.delete', 'guard_name' => 'web', 'group_name' => 'brand'],

            ['id' => 19, 'name' => 'unit.menu', 'guard_name' => 'web', 'group_name' => 'unit'],
            ['id' => 20, 'name' => 'unit.edit', 'guard_name' => 'web', 'group_name' => 'unit'],
            ['id' => 21, 'name' => 'unit.delete', 'guard_name' => 'web', 'group_name' => 'unit'],

            ['id' => 22, 'name' => 'products-size.menu', 'guard_name' => 'web', 'group_name' => 'product-size'],
            ['id' => 23, 'name' => 'products-size.add', 'guard_name' => 'web', 'group_name' => 'product-size'],
            ['id' => 24, 'name' => 'products-size.edit', 'guard_name' => 'web', 'group_name' => 'product-size'],
            ['id' => 25, 'name' => 'products-size.delete', 'guard_name' => 'web', 'group_name' => 'product-size'],

            ['id' => 26, 'name' => 'tax.menu', 'guard_name' => 'web', 'group_name' => 'taxes'],
            ['id' => 27, 'name' => 'tax.edit', 'guard_name' => 'web', 'group_name' => 'taxes'],
            ['id' => 28, 'name' => 'tax.delete', 'guard_name' => 'web', 'group_name' => 'taxes'],

            ['id' => 29, 'name' => 'products.add', 'guard_name' => 'web', 'group_name' => 'products'],

            ['id' => 30, 'name' => 'supplier.menu', 'guard_name' => 'web', 'group_name' => 'supplier'],
            ['id' => 31, 'name' => 'supplier.edit', 'guard_name' => 'web', 'group_name' => 'supplier'],
            ['id' => 32, 'name' => 'supplier.delete', 'guard_name' => 'web', 'group_name' => 'supplier'],

            ['id' => 33, 'name' => 'purchase.menu', 'guard_name' => 'web', 'group_name' => 'purchase'],
            ['id' => 34, 'name' => 'purchase.add', 'guard_name' => 'web', 'group_name' => 'purchase'],
            ['id' => 35, 'name' => 'purchase.list', 'guard_name' => 'web', 'group_name' => 'purchase'],
            ['id' => 36, 'name' => 'purchase.edit', 'guard_name' => 'web', 'group_name' => 'purchase'],
            ['id' => 37, 'name' => 'purchase.delete', 'guard_name' => 'web', 'group_name' => 'purchase'],

            ['id' => 38, 'name' => 'promotion.menu', 'guard_name' => 'web', 'group_name' => 'promotion'],
            ['id' => 39, 'name' => 'promotion.add', 'guard_name' => 'web', 'group_name' => 'promotion'],
            ['id' => 40, 'name' => 'promotion.edit', 'guard_name' => 'web', 'group_name' => 'promotion'],
            ['id' => 41, 'name' => 'promotion.delete', 'guard_name' => 'web', 'group_name' => 'promotion'],

            ['id' => 42, 'name' => 'promotion-details.menu', 'guard_name' => 'web', 'group_name' => 'promotion-details'],
            ['id' => 43, 'name' => 'promotion-details.add', 'guard_name' => 'web', 'group_name' => 'promotion-details'],
            ['id' => 44, 'name' => 'promotion-details.edit', 'guard_name' => 'web', 'group_name' => 'promotion-details'],
            ['id' => 45, 'name' => 'promotion-details.delete', 'guard_name' => 'web', 'group_name' => 'promotion-details'],

            ['id' => 46, 'name' => 'damage.menu', 'guard_name' => 'web', 'group_name' => 'damage'],
            ['id' => 47, 'name' => 'damage.add', 'guard_name' => 'web', 'group_name' => 'damage'],
            ['id' => 48, 'name' => 'damage.edit', 'guard_name' => 'web', 'group_name' => 'damage'],
            ['id' => 49, 'name' => 'damage.delete', 'guard_name' => 'web', 'group_name' => 'damage'],

            ['id' => 50, 'name' => 'bank.menu', 'guard_name' => 'web', 'group_name' => 'bank'],
            ['id' => 51, 'name' => 'bank.edit', 'guard_name' => 'web', 'group_name' => 'bank'],
            ['id' => 52, 'name' => 'bank..delete', 'guard_name' => 'web', 'group_name' => 'bank'],

            ['id' => 53, 'name' => 'expense.menu', 'guard_name' => 'web', 'group_name' => 'expense'],
            ['id' => 54, 'name' => 'expense.edit', 'guard_name' => 'web', 'group_name' => 'expense'],
            ['id' => 55, 'name' => 'expense.delete', 'guard_name' => 'web', 'group_name' => 'expense'],

            ['id' => 56, 'name' => 'transaction.menu', 'guard_name' => 'web', 'group_name' => 'transaction'],
            ['id' => 57, 'name' => 'transaction.history', 'guard_name' => 'web', 'group_name' => 'transaction'],
            ['id' => 58, 'name' => 'transaction.delete', 'guard_name' => 'web', 'group_name' => 'transaction'],

            ['id' => 59, 'name' => 'customer.menu', 'guard_name' => 'web', 'group_name' => 'customer'],
            ['id' => 60, 'name' => 'customer.add', 'guard_name' => 'web', 'group_name' => 'customer'],
            ['id' => 61, 'name' => 'customer.edit', 'guard_name' => 'web', 'group_name' => 'customer'],
            ['id' => 62, 'name' => 'customer.delete', 'guard_name' => 'web', 'group_name' => 'customer'],

            ['id' => 63, 'name' => 'employee.menu', 'guard_name' => 'web', 'group_name' => 'employee'],
            ['id' => 64, 'name' => 'employee.add', 'guard_name' => 'web', 'group_name' => 'employee'],
            ['id' => 65, 'name' => 'employee.edit', 'guard_name' => 'web', 'group_name' => 'employee'],
            ['id' => 66, 'name' => 'employee.delete', 'guard_name' => 'web', 'group_name' => 'employee'],

            ['id' => 67, 'name' => 'employee-salary.menu', 'guard_name' => 'web', 'group_name' => 'employee-salary'],
            ['id' => 68, 'name' => 'employee-salary.add', 'guard_name' => 'web', 'group_name' => 'employee-salary'],
            ['id' => 69, 'name' => 'employee-salary.edit', 'guard_name' => 'web', 'group_name' => 'employee-salary'],
            ['id' => 70, 'name' => 'employee-salary.delete', 'guard_name' => 'web', 'group_name' => 'employee-salary'],
            ['id' => 71, 'name' => 'employee-salary.list', 'guard_name' => 'web', 'group_name' => 'employee-salary'],

            ['id' => 72, 'name' => 'advanced-employee-salary.menu', 'guard_name' => 'web', 'group_name' => 'advanced-employee-salary'],

            ['id' => 73, 'name' => 'crm.menu', 'guard_name' => 'web', 'group_name' => 'crm'],
            ['id' => 74, 'name' => 'crm.customize-customer', 'guard_name' => 'web', 'group_name' => 'crm'],
            ['id' => 75, 'name' => 'crm.email-marketing', 'guard_name' => 'web', 'group_name' => 'crm'],
            ['id' => 76, 'name' => 'crm.sms-marketing', 'guard_name' => 'web', 'group_name' => 'crm'],

            ['id' => 77, 'name' => 'role-and-permission.menu', 'guard_name' => 'web', 'group_name' => 'role-and-permissions'],
            ['id' => 78, 'name' => 'role-and-permission.all-permission', 'guard_name' => 'web', 'group_name' => 'role-and-permissions'],
            ['id' => 79, 'name' => 'role-and-permission.all-permission.add', 'guard_name' => 'web', 'group_name' => 'role-and-permissions'],
            ['id' => 80, 'name' => 'role-and-permission.all-permission.edit', 'guard_name' => 'web', 'group_name' => 'role-and-permissions'],
            ['id' => 81, 'name' => 'role-and-permission.all-permission.delete', 'guard_name' => 'web', 'group_name' => 'role-and-permissions'],
            ['id' => 82, 'name' => 'role-and-permission.all-role', 'guard_name' => 'web', 'group_name' => 'role-and-permissions'],
            ['id' => 83, 'name' => 'role-and-permission.all-role.add', 'guard_name' => 'web', 'group_name' => 'role-and-permissions'],
            ['id' => 84, 'name' => 'role-and-permission.all-role.edit', 'guard_name' => 'web', 'group_name' => 'role-and-permissions'],
            ['id' => 85, 'name' => 'role-and-permission.all-role.delete', 'guard_name' => 'web', 'group_name' => 'role-and-permissions'],
            ['id' => 86, 'name' => 'role-and-permission.role-in-permission', 'guard_name' => 'web', 'group_name' => 'role-and-permissions'],
            ['id' => 87, 'name' => 'role-and-permission-check-role-permission', 'guard_name' => 'web', 'group_name' => 'role-and-permissions'],
            ['id' => 88, 'name' => 'role-and-permission-check-role-permission.edit', 'guard_name' => 'web', 'group_name' => 'role-and-permissions'],
            ['id' => 89, 'name' => 'role-and-permission-check-role-permission.delete', 'guard_name' => 'web', 'group_name' => 'role-and-permissions'],

            ['id' => 90, 'name' => 'admin-manage.menu', 'guard_name' => 'web', 'group_name' => 'admin-manage'],
            ['id' => 91, 'name' => 'admin-manage.add', 'guard_name' => 'web', 'group_name' => 'admin-manage'],
            ['id' => 92, 'name' => 'admin-manage.edit', 'guard_name' => 'web', 'group_name' => 'admin-manage'],
            ['id' => 93, 'name' => 'admin-manage.delete', 'guard_name' => 'web', 'group_name' => 'admin-manage'],
            ['id' => 94, 'name' => 'admin-manage.list', 'guard_name' => 'web', 'group_name' => 'admin-manage'],

            ['id' => 95, 'name' => 'settings.menu', 'guard_name' => 'web', 'group_name' => 'settings'],

            ['id' => 96, 'name' => 'branch.menu', 'guard_name' => 'web', 'group_name' => 'branch'],
            ['id' => 97, 'name' => 'branch.add', 'guard_name' => 'web', 'group_name' => 'branch'],
            ['id' => 98, 'name' => 'branch.edit', 'guard_name' => 'web', 'group_name' => 'branch'],
            ['id' => 99, 'name' => 'branch.delete', 'guard_name' => 'web', 'group_name' => 'branch'],

            ['id' => 100, 'name' => 'report.menu', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 101, 'name' => 'return.menu', 'guard_name' => 'web', 'group_name' => 'return'],
            ['id' => 102, 'name' => 'limit.user', 'guard_name' => 'web', 'group_name' => 'limit'],
            ['id' => 103, 'name' => 'limit.device', 'guard_name' => 'web', 'group_name' => 'limit'],

            ['id' => 104, 'name' => 'via.purchase', 'guard_name' => 'web', 'group_name' => 'purchase'],

            ['id' => 105, 'name' => 'Inventory.menu', 'guard_name' => 'web', 'group_name' => 'inventory'],
            ['id' => 106, 'name' => 'Inventory.stock.report', 'guard_name' => 'web', 'group_name' => 'inventory'],
            ['id' => 107, 'name' => 'Inventory.low.stock.report', 'guard_name' => 'web', 'group_name' => 'inventory'],
            ['id' => 108, 'name' => 'Inventory.damage', 'guard_name' => 'web', 'group_name' => 'inventory'],

            ['id' => 109, 'name' => 'setting.manage', 'guard_name' => 'web', 'group_name' => 'settings'],
            ['id' => 110, 'name' => 'excel.file.import', 'guard_name' => 'web', 'group_name' => 'other'],
            ['id' => 111, 'name' => 'bank.add', 'guard_name' => 'web', 'group_name' => 'bank'],
            ['id' => 112, 'name' => 'category.add', 'guard_name' => 'web', 'group_name' => 'category'],
            ['id' => 113, 'name' => 'subcategory.add', 'guard_name' => 'web', 'group_name' => 'subcategory'],
            ['id' => 114, 'name' => 'brand.add', 'guard_name' => 'web', 'group_name' => 'brand'],
            ['id' => 115, 'name' => 'unit.add', 'guard_name' => 'web', 'group_name' => 'unit'],
            ['id' => 116, 'name' => 'tax.add', 'guard_name' => 'web', 'group_name' => 'taxes'],
            ['id' => 117, 'name' => 'supplier.add', 'guard_name' => 'web', 'group_name' => 'supplier'],
            ['id' => 118, 'name' => 'damage.list', 'guard_name' => 'web', 'group_name' => 'damage'],
            ['id' => 119, 'name' => 'via.purchase.payment', 'guard_name' => 'web', 'group_name' => 'purchase'],
            ['id' => 120, 'name' => 'via.purchase.delete', 'guard_name' => 'web', 'group_name' => 'purchase'],
            ['id' => 121, 'name' => 'toady.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 122, 'name' => 'product.info.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 123, 'name' => 'summary.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 124, 'name' => 'customer.due.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 125, 'name' => 'supplier.due.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 126, 'name' => 'top.products.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 127, 'name' => 'purchase.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 128, 'name' => 'customer.ledger.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 129, 'name' => 'supplier.ledger.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 130, 'name' => 'account.transaction.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 131, 'name' => 'expense.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 132, 'name' => 'employee.salary.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 133, 'name' => 'sms.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 134, 'name' => 'monthly.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 135, 'name' => 'yearly.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 136, 'name' => 'inventory.report', 'guard_name' => 'web', 'group_name' => 'report'],
            ['id' => 137, 'name' => 'Make.Items', 'guard_name' => 'web', 'group_name' => 'make-menu-and-item'],
            ['id' => 138, 'name' => 'make.items.manage', 'guard_name' => 'web', 'group_name' => 'make-menu-and-item'],
            ['id' => 139, 'name' => 'make.category', 'guard_name' => 'web', 'group_name' => 'make-menu-and-item'],
            ['id' => 140, 'name' => 'set.menu', 'guard_name' => 'web', 'group_name' => 'make-menu-and-item'],
            ['id' => 141, 'name' => 'set.items', 'guard_name' => 'web', 'group_name' => 'make-menu-and-item'],
            ['id' => 142, 'name' => 'set.items.manage', 'guard_name' => 'web', 'group_name' => 'make-menu-and-item'],
            ['id' => 143, 'name' => 'top.sale.set.menu', 'guard_name' => 'web', 'group_name' => 'inventory'],
            ['id' => 144, 'name' => 'top.sale.make.item', 'guard_name' => 'web', 'group_name' => 'inventory'],
            ['id' => 145, 'name' => 'make.menu.and.item.menu', 'guard_name' => 'web', 'group_name' => 'make-menu-and-item'],
            ['id' => 146, 'name' => 'ingredient.audit', 'guard_name' => 'web', 'group_name' => 'ingredient-audit'],
            ['id' => 147, 'name' => 'audit.report', 'guard_name' => 'web', 'group_name' => 'ingredient-audit'],
            // add more permissions as needed
        ];

        // Insert permissions into the database
        DB::table('permissions')->insert($permissions);
    }
}
