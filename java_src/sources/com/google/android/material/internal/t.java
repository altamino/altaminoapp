package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class t {
    private static final Comparator<View> VIEW_TOP_COMPARATOR = new a();

    @Nullable
    private static ImageView a(@NonNull Toolbar toolbar, @Nullable Drawable drawable) {
        ImageView imageView;
        Drawable drawable2;
        if (drawable == null) {
            return null;
        }
        for (int i10 = 0; i10 < toolbar.getChildCount(); i10++) {
            View childAt = toolbar.getChildAt(i10);
            if ((childAt instanceof ImageView) && (drawable2 = (imageView = (ImageView) childAt).getDrawable()) != null && drawable2.getConstantState() != null && drawable2.getConstantState().equals(drawable.getConstantState())) {
                return imageView;
            }
        }
        return null;
    }

    class a implements Comparator<View> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            return view.getTop() - view2.getTop();
        }
    }

    private static List<TextView> d(@NonNull Toolbar toolbar, CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < toolbar.getChildCount(); i10++) {
            View childAt = toolbar.getChildAt(i10);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (TextUtils.equals(textView.getText(), charSequence)) {
                    arrayList.add(textView);
                }
            }
        }
        return arrayList;
    }

    @Nullable
    public static ImageView b(@NonNull Toolbar toolbar) {
        return a(toolbar, toolbar.getLogo());
    }

    @Nullable
    public static TextView c(@NonNull Toolbar toolbar) {
        List<TextView> listD = d(toolbar, toolbar.getSubtitle());
        if (listD.isEmpty()) {
            return null;
        }
        return (TextView) Collections.max(listD, VIEW_TOP_COMPARATOR);
    }

    @Nullable
    public static TextView e(@NonNull Toolbar toolbar) {
        List<TextView> listD = d(toolbar, toolbar.getTitle());
        if (listD.isEmpty()) {
            return null;
        }
        return (TextView) Collections.min(listD, VIEW_TOP_COMPARATOR);
    }
}
