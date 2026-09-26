package com.narvii.util.kotlin;

import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.TextView;
import e8.a;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class TextViewExtensionKt {
    public static final void makeTextLink(@NotNull TextView textView, @NotNull String str, final boolean z6, @Nullable Integer num, @Nullable final a<l0> aVar) {
        t.j(textView, "<this>");
        t.j(str, "str");
        SpannableString spannableString = new SpannableString(textView.getText());
        final int iIntValue = num != null ? num.intValue() : textView.getCurrentTextColor();
        ClickableSpan clickableSpan = new ClickableSpan() { // from class: com.narvii.util.kotlin.TextViewExtensionKt$makeTextLink$clickableSpan$1
            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(@NotNull TextPaint drawState) {
                t.j(drawState, "drawState");
                super.updateDrawState(drawState);
                drawState.setUnderlineText(z6);
                drawState.setColor(iIntValue);
            }

            @Override // android.text.style.ClickableSpan
            public void onClick(@NotNull View textView2) {
                t.j(textView2, "textView");
                a<l0> aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.invoke();
                }
            }
        };
        int iC0 = u.c0(spannableString, str, 0, false, 6, null);
        spannableString.setSpan(clickableSpan, iC0, str.length() + iC0, 33);
        textView.setText(spannableString);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setHighlightColor(0);
    }

    public static /* synthetic */ void makeTextLink$default(TextView textView, String str, boolean z6, Integer num, a aVar, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            aVar = null;
        }
        makeTextLink(textView, str, z6, num, aVar);
    }
}
