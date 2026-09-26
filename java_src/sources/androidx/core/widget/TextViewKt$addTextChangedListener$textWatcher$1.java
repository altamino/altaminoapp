package androidx.core.widget;

import android.text.Editable;
import android.text.TextWatcher;
import e8.l;
import e8.r;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class TextViewKt$addTextChangedListener$textWatcher$1 implements TextWatcher {
    final /* synthetic */ l<Editable, l0> $afterTextChanged;
    final /* synthetic */ r<CharSequence, Integer, Integer, Integer, l0> $beforeTextChanged;
    final /* synthetic */ r<CharSequence, Integer, Integer, Integer, l0> $onTextChanged;

    /* JADX WARN: Multi-variable type inference failed */
    public TextViewKt$addTextChangedListener$textWatcher$1(l<? super Editable, l0> lVar, r<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, l0> rVar, r<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, l0> rVar2) {
        this.$afterTextChanged = lVar;
        this.$beforeTextChanged = rVar;
        this.$onTextChanged = rVar2;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(@Nullable Editable editable) {
        this.$afterTextChanged.invoke(editable);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        this.$beforeTextChanged.invoke(charSequence, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        this.$onTextChanged.invoke(charSequence, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
    }
}
