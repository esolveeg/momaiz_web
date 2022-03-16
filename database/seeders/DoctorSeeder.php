<?php

namespace Database\Seeders;

use App\Models\Doctor;
use Illuminate\Database\Seeder;

class DoctorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $doctors = [
            [
                'name' => 'Mohamed rafat',
                'name_ar' => 'محمد رافت',
                'breif' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
                'breif_ar' => 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ',
                'title' => 'Prof. & HOD',
                'image' => 'doctors/1.jpg',
                'featured' => true,
                'department_id' => rand(1, 6),
            ],
            [
                'name' => 'Sara Ahmed',
                'name_ar' => 'سارة احمد',
                'breif' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
                'breif_ar' => 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ',
                'title' => 'Asst.Prof',
                'image' => 'doctors/2.jpg',
                'featured' => true,
                'department_id' => rand(1, 6),
            ],
            [
                'name' => 'Islam abousmara',
                'name_ar' => 'اسلام ابوسمرة',
                'breif' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
                'breif_ar' => 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ',
                'title' => 'Asso. Prof',
                'image' => 'doctors/3.jpg',
                'featured' => true,
                'department_id' => rand(1, 6),
            ],
            [
                'name' => 'Momen youssef',
                'name_ar' => 'مؤمن يوسف',
                'breif' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
                'breif_ar' => 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ',
                'title' => 'Prof. & HOD',
                'image' => 'doctors/4.jpg',
                'featured' => true,
                'department_id' => rand(1, 6),
            ],
            [
                'name' => 'Mai Mohamed',
                'name_ar' => 'مي محمد',
                'breif' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
                'breif_ar' => 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ',
                'title' => 'Asst.Prof',
                'image' => 'doctors/5.jpg',
                'featured' => true,
                'department_id' => rand(1, 6),
            ],
            [
                'name' => 'Abdelrahman Hussein',
                'name_ar' => 'عبدالرحمن حسين',
                'breif' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
                'breif_ar' => 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ',
                'title' => 'Professor',
                'image' => 'doctors/6.jpg',
                'department_id' => rand(1, 6),

            ],
            [
                'name' => 'Yassen Ahmed',
                'name_ar' => 'ياسين احمد',
                'breif' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
                'breif_ar' => 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ',
                'title' => 'Asso. Prof',
                'image' => 'doctors/7.jpg',
                'department_id' => rand(1, 6),

            ],
            [
                'name' => 'Khaled Yaheia',
                'name_ar' => 'خالد يحي',
                'breif' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
                'breif_ar' => 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ',
                'title' => 'Asso. Prof',
                'image' => 'doctors/8.jpg',
                'department_id' => rand(1, 6),

            ],
        ];

        Doctor::insert($doctors);
    }
}
