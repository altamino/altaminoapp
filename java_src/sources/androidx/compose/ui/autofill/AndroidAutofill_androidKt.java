package androidx.compose.ui.autofill;

import android.graphics.Rect;
import android.util.Log;
import android.util.SparseArray;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import u.d;

/* JADX INFO: loaded from: classes9.dex */
public final class AndroidAutofill_androidKt {
    @RequiresApi
    @ExperimentalComposeUiApi
    public static final void a(@NotNull AndroidAutofill androidAutofill, @NotNull SparseArray<AutofillValue> values) {
        t.j(androidAutofill, "<this>");
        t.j(values, "values");
        int size = values.size();
        for (int i10 = 0; i10 < size; i10++) {
            int iKeyAt = values.keyAt(i10);
            AutofillValue value = d.a(values.get(iKeyAt));
            AutofillApi26Helper autofillApi26Helper = AutofillApi26Helper.INSTANCE;
            t.i(value, "value");
            if (autofillApi26Helper.d(value)) {
                androidAutofill.b().b(iKeyAt, autofillApi26Helper.i(value).toString());
            } else {
                if (autofillApi26Helper.b(value)) {
                    throw new w7.t("An operation is not implemented: b/138604541: Add onFill() callback for date");
                }
                if (autofillApi26Helper.c(value)) {
                    throw new w7.t("An operation is not implemented: b/138604541: Add onFill() callback for list");
                }
                if (autofillApi26Helper.e(value)) {
                    throw new w7.t("An operation is not implemented: b/138604541:  Add onFill() callback for toggle");
                }
            }
        }
    }

    @RequiresApi
    @ExperimentalComposeUiApi
    public static final void b(@NotNull AndroidAutofill androidAutofill, @NotNull ViewStructure root) {
        Rect rectA;
        t.j(androidAutofill, "<this>");
        t.j(root, "root");
        int iA = AutofillApi23Helper.INSTANCE.a(root, androidAutofill.b().a().size());
        for (Map.Entry<Integer, AutofillNode> entry : androidAutofill.b().a().entrySet()) {
            int iIntValue = entry.getKey().intValue();
            AutofillNode value = entry.getValue();
            AutofillApi23Helper autofillApi23Helper = AutofillApi23Helper.INSTANCE;
            ViewStructure viewStructureB = autofillApi23Helper.b(root, iA);
            if (viewStructureB != null) {
                AutofillApi26Helper autofillApi26Helper = AutofillApi26Helper.INSTANCE;
                AutofillId autofillIdA = autofillApi26Helper.a(root);
                t.g(autofillIdA);
                autofillApi26Helper.g(viewStructureB, autofillIdA, iIntValue);
                autofillApi23Helper.d(viewStructureB, iIntValue, androidAutofill.c().getContext().getPackageName(), null, null);
                autofillApi26Helper.h(viewStructureB, 1);
                List<AutofillType> listC = value.c();
                ArrayList arrayList = new ArrayList(listC.size());
                int size = listC.size();
                for (int i10 = 0; i10 < size; i10++) {
                    arrayList.add(AndroidAutofillType_androidKt.a(listC.get(i10)));
                }
                Object[] array = arrayList.toArray(new String[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                }
                autofillApi26Helper.f(viewStructureB, (String[]) array);
                if (value.d() == null) {
                    Log.w("Autofill Warning", "Bounding box not set.\n                        Did you call perform autofillTree before the component was positioned? ");
                }
                androidx.compose.ui.geometry.Rect rectD = value.d();
                if (rectD != null && (rectA = RectHelper_androidKt.a(rectD)) != null) {
                    AutofillApi23Helper.INSTANCE.c(viewStructureB, rectA.left, rectA.top, 0, 0, rectA.width(), rectA.height());
                }
            }
            iA++;
        }
    }
}
