<?php

namespace Database\Seeders;

use App\Models\Testemonial;
use Illuminate\Database\Seeder;

class TestemonialSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $testemonials = [
            [
                'name' => 'Ahmed Youssef',
                'title' => 'Patient',
                'title_ar' => 'مريض',
                'content' => 'Mistaken idea of denouncing pleasure and praising pain was
                born and I will give you a complete account of the system.',
                'image' => 'testemonials/1.png',
            ],
            [
                'name' => 'Mayar mohamed',
                'title' => 'Doctor',
                'title_ar' => 'طبيبة',
                'content' => 'Mistaken idea of denouncing pleasure and praising pain was
                born and I will give you a complete account of the system.',
                'image' => 'testemonials/2.png',
            ],
            [
                'name' => 'Menna Ahmed',
                'title' => 'Researcher',
                'title_ar' => 'باحثة',
                'content' => 'Mistaken idea of denouncing pleasure and praising pain was
                born and I will give you a complete account of the system.',
                'image' => 'testemonials/3.png',
            ],
            [
                'name' => 'Ahmed Youssef',
                'title' => 'Patient',
                'title_ar' => 'مريض',
                'content' => 'Mistaken idea of denouncing pleasure and praising pain was
                born and I will give you a complete account of the system.',
                'image' => 'testemonials/4.png',
            ],
        ];

        Testemonial::insert($testemonials);
    }
}
