<?php

namespace Database\Seeders;

use App\Models\Slider;
use Illuminate\Database\Seeder;

class SliderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $sliders = [
            [
                'title' => '<h1>
                Almomayez providing total<br />
                healthcare <span>Solutions.</span>
              </h1>',
                'title_ar' => '<h1>
                تقدم مسشفي المميز<br />
                رعاية صحية <span>كاملة.</span>
              </h1>',
                'content' => ' <p>
                Ensuring excellence of quality of care through evidence based on practices.
                Denouncing pleasure and praising pain was born and we will
                <br />through evidence based on practices.
              </p>',
                'content_ar' => '<p>العمل الجاد لإرضاء موظفينا وكذلك عملائنا.
                ضمان التميز في جودة الرعاية من خلال <br>الأدلة القائمة على الممارسات.</p>',
                'image' => 'sliders/1.jpg',
            ],
            [
                'title' => '<h1>
                Almomayez providing total<br />
                healthcare <span>Solutions.</span>
              </h1>',
                'title_ar' => '<h1>
                تقدم مسشفي المميز<br />
                رعاية صحية <span>كاملة.</span>
              </h1>',
                'content' => ' <p>
                Ensuring excellence of quality of care through evidence based on practices.
                Denouncing pleasure and praising pain was born and we will
                <br />through evidence based on practices.
              </p>',
                'content_ar' => '<p>العمل الجاد لإرضاء موظفينا وكذلك عملائنا.
                ضمان التميز في جودة الرعاية من خلال <br>الأدلة القائمة على الممارسات.</p>',
                'image' => 'sliders/2.jpg',
            ],
            [
                'title' => '<h1>
                Almomayez providing total<br />
                healthcare <span>Solutions.</span>
              </h1>',
                'title_ar' => '<h1>
                تقدم مسشفي المميز<br />
                رعاية صحية <span>كاملة.</span>
              </h1>',
                'content' => ' <p>
                Ensuring excellence of quality of care through evidence based on practices.
                Denouncing pleasure and praising pain was born and we will
                <br />through evidence based on practices.
              </p>',
                'content_ar' => '<p>العمل الجاد لإرضاء موظفينا وكذلك عملائنا.
                ضمان التميز في جودة الرعاية من خلال <br>الأدلة القائمة على الممارسات.</p>',
                'image' => 'sliders/3.jpg',
            ],

        ];

        Slider::insert($sliders);
    }
}
