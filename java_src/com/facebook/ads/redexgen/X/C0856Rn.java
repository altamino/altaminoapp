package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Rn, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0856Rn extends LinearLayout {
    private static final int A02 = (int) (40.0f * OY.A01);
    private static final int A03 = (int) (20.0f * OY.A01);
    private static final int A04 = (int) (10.0f * OY.A01);
    private final C02684m A00;
    private final RS A01;

    public C0856Rn(Context context, C02684m c02684m, RS rs, EnumC0768Od enumC0768Od) {
        this(context, c02684m, rs, null, enumC0768Od);
    }

    public C0856Rn(Context context, C02684m c02684m, RS rs, @Nullable String str, EnumC0768Od enumC0768Od) {
        super(context);
        this.A00 = c02684m;
        this.A01 = rs;
        setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        if (!TextUtils.isEmpty(str)) {
            View viewA02 = A02(str);
            viewA02.setPadding(0, 0, 0, 0);
            View view = new View(getContext());
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, 1));
            OY.A0P(view, -10459280);
            addView(viewA02, layoutParams);
            addView(view);
        }
        if (!TextUtils.isEmpty(this.A00.A03())) {
            View viewA01 = A01(enumC0768Od, this.A00.A03());
            viewA01.setPadding(0, A04, 0, A04);
            addView(viewA01, layoutParams);
        }
        View viewA00 = A00();
        viewA00.setPadding(0, A04, 0, 0);
        addView(viewA00, layoutParams);
    }

    private View A00() {
        C0856Rn c0856Rn = this;
        C0863Ru c0863Ru = new C0863Ru(c0856Rn.getContext());
        Iterator<C02684m> it = c0856Rn.A00.A05().iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0856Rn = c0856Rn;
                    c0863Ru = c0863Ru;
                    it = it;
                    C02684m next = it.next();
                    RX rx = new RX(c0856Rn.getContext());
                    rx.setData(next.A04(), null);
                    rx.setOnClickListener(new ViewOnClickListenerC0855Rm(c0856Rn, rx, next));
                    c0863Ru.addView(rx);
                    c = 2;
                    break;
                case 4:
                    return c0863Ru;
            }
        }
    }

    private View A01(EnumC0768Od enumC0768Od, String str) {
        ImageView imageView = new ImageView(getContext());
        imageView.setColorFilter(-10459280);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A03, A03);
        layoutParams.gravity = 16;
        imageView.setImageBitmap(C0769Oe.A01(enumC0768Od));
        TextView textView = new TextView(getContext());
        OY.A0Y(textView, true, 14);
        textView.setTextColor(-10459280);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        textView.setText(str);
        textView.setPadding(A04, 0, 0, 0);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        return linearLayout;
    }

    private View A02(String str) {
        ImageView imageView = new ImageView(getContext());
        imageView.setColorFilter(-10459280);
        imageView.setImageBitmap(C0769Oe.A01(EnumC0768Od.BACK_ARROW));
        imageView.setPadding(0, A04, A04 * 2, A04);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A02, A02);
        imageView.setOnClickListener(new ViewOnClickListenerC0854Rl(this));
        TextView textView = new TextView(getContext());
        textView.setGravity(17);
        textView.setText(str);
        OY.A0Y(textView, true, 16);
        textView.setTextColor(-14934495);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(0, 0, A02, 0);
        layoutParams2.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        return linearLayout;
    }
}
