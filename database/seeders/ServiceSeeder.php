<?php

namespace Database\Seeders;

use App\Models\Service;
use Illuminate\Database\Seeder;

class ServiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $services = [
            [
                'name' => 'Opthalmology',
                'name_ar' => 'طب العيون',
                'image' => '1.jpg',
            ],
            [
                'name' => 'Laboratory',
                'name_ar' => 'مختبر',
                'image' => '2.jpg',
            ],
            [
                'name' => 'Cardiac Clinic',
                'name_ar' => 'عيادة القلب',
                'image' => '3.jpg',
            ],
            [
                'name' => 'OutPatient',
                'name_ar' => 'العيادات الخارجية',
                'image' => '4.jpg',
            ],
        ];

        Service::insert($services);
    }
}
