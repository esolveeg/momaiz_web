<?php

namespace Database\Seeders;

use App\Models\Faq;
use Illuminate\Database\Seeder;

class FaqSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faqs = [
            [
                'question' => 'Can a family member spend the night with me?',
                'question_ar' => 'هل يمكن لأحد أفراد الأسرة قضاء الليلة معي؟',
                'answer' => 'Adequate rest is important for you. However, arrangements can be made for a family member to spend the night with you and many rooms include pull-out couches.',
                'answer_ar' => 'الراحة الكافية مهمة بالنسبة لك. ومع ذلك ، يمكن إجراء الترتيبات اللازمة لقضاء أحد أفراد الأسرة الليلة معك وتشمل العديد من الغرف أرائك قابلة للطي.',
            ],
            [
                'question' => 'Why can\'t I use my own medications when I\'m in the hospital?',
                'question_ar' => 'ماذا لا يمكنني استخدام الأدوية الخاصة بي عندما أكون في المستشفى؟',
                'answer' => 'Our Pharmacy is committed to making sure patients use prescription drugs safely. When you bring medication from home, we don\'t know if the drug has been properly stored or is otherwise safe. To make sure our patients receive medication in the exact dosage needed, they are given only those medications ordered by their doctor from the hospital Pharmacy.Medication brought from home must be stored in the Pharmacy or returned home',
                'answer_ar' => 'تلتزم الصيدلية لدينا بالتأكد من أن المرضى يستخدمون الأدوية الموصوفة بأمان. عند إحضار الأدوية من المنزل ، لا نعرف ما إذا كان قد تم تخزين الدواء بشكل صحيح أم أنه آمن. للتأكد من حصول مرضانا على الدواء بالجرعة المطلوبة ، لا يتم إعطاؤهم سوى تلك الأدوية التي طلبها الطبيب من صيدلية المستشفى.

                يجب تخزين الأدوية التي يتم إحضارها من المنزل في الصيدلية أو إعادتها إلى المنزل',
            ],
            [
                'question' => 'When are meals served?',
                'question_ar' => 'متى يتم تقديم الوجبات؟',
                'answer' => 'Mealtime depends on the location of your room. Between-meal snacks are available from the nursing unit pantries or room service. Check with your nurse for specific mealtimes and assistance with room service. Guest trays are available for one visitor per room. To order a guest tray, dial extension 4939 one hour before mealtime. A fee is charged and is not covered by insurance. A folder listing room service and guest tray menus is in your bedside table. Guest trays are not available in ICU or Garden Pavilion; dining at the Fountain Court Café is encouraged for visitors.',
                'answer_ar' => 'يعتمد وقت تناول الطعام على موقع غرفتك. تتوفر الوجبات الخفيفة بين الوجبات في مخازن وحدة التمريض أو خدمة الغرف. تحقق مع ممرضتك لمعرفة أوقات الوجبات المحددة والمساعدة في خدمة الغرف.
                تتوفر صواني الضيوف لزائر واحد لكل غرفة. لطلب صينية ضيف ، اطلب الرقم الداخلي 4939 قبل ساعة واحدة من موعد الوجبة. يتم فرض رسوم ولا يغطيها التأمين. يوجد مجلد يسرد خدمة الغرف وقوائم علبة الضيوف في طاولة السرير الخاصة بك. لا تتوفر صواني الضيوف في وحدة العناية المركزة أو Garden Pavilion ؛ يتم تشجيع تناول الطعام في Fountain Court Café للزوار.',
            ],
        ];

        Faq::insert($faqs);
    }
}
