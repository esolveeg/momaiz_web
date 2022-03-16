<?php

namespace Database\Seeders;

use App\Models\Department;
use Illuminate\Database\Seeder;

class DepartmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $departments = [
            [
                'name' => 'Cardiology',
                'name_ar' => 'طب القلب',
                'breif' => 'The specialty of cardiology provides care across the spectrum of cardiovascular diseases from prevention to end-of-life supportive care.',
                'breif_ar' => 'يوفر تخصص أمراض القلب الرعاية عبر مجموعة متنوعة من أمراض القلب والأوعية الدموية من الوقاية إلى الرعاية الداعمة في نهاية العمر',
                'icon' => 'cardiology',
                'featured' => true,
            ],
            [
                'name' => 'Pulmonology',
                'name_ar' => 'أمراض الرئة',
                'breif' => 'Pulmonary care refers to the medical specialty devoted to the lungs. ',
                'breif_ar' => 'تشير الرعاية الرئوية إلى التخصص الطبي المخصص للرئتين.',
                'icon' => 'vagina',
                'featured' => true,
            ],
            [
                'name' => 'Gynecology',
                'name_ar' => 'أمراض النساء',
                'breif' => 'The Department of Obstetrics and Gynecology at Almomayez hospital offers the finest in medical technology available in the Middle East.',
                'breif_ar' => 'قدم قسم أمراض النساء والولادة في مستشفى المميز أرقى التقنيات الطبية المتوفرة في الشرق الأوسط.',
                'icon' => 'neurology',
                'featured' => true,
            ],
            [
                'name' => 'Neurology',
                'name_ar' => 'علم الأعصاب',
                'breif' => 'The Neurology department in the Saudi Al momayez hospital operates through well trained and experienced consultants, ',
                'breif_ar' => 'يعمل قسم الأمراض العصبية في مستشفى المميز السعودي من خلال استشاريين مدربين وذوي خبرة جيدة ،',
                'icon' => 'lungs',
                'featured' => true,
            ],
            [
                'name' => 'Urology',
                'name_ar' => 'جراحة المسالك البولية',
                'breif' => 'Al momayez Hospital - Cairo offers a wide range of medical and surgical services related to the urinary system (kidneys, bladder and urethra), the genital system and prostate.',
                'breif_ar' => 'تقدم مستشفى المميز بالقاهرة مجموعة واسعة من الخدمات الطبية والجراحية المتعلقة بالجهاز البولي (الكلى والمثانة والإحليل) والجهاز التناسلي والبروستاتا.',
                'icon' => 'kidneys',
                'featured' => true,
            ],
            [
                'name' => 'Gastrology',
                'name_ar' => 'أمراض المعدة',
                'breif' => 'Our distinguished gastroenterologists are dealing with almost all related disease conditions in the outpatient department as well as the inpatient section depending on the severity of the case.',
                'breif_ar' => 'يتعامل أخصائيو الجهاز الهضمي المتميزون لدينا مع جميع الحالات المرضية ذات الصلة تقريبًا في قسم العيادات الخارجية بالإضافة إلى قسم المرضى الداخليين اعتمادًا على شدة الحالة.',
                'icon' => 'heart',
            ],

        ];

        Department::insert($departments);

    }
}
