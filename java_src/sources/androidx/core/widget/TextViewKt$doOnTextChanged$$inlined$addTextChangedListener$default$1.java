package androidx.core.widget;

import android.text.Editable;
import android.text.TextWatcher;
import e8.r;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class TextViewKt$doOnTextChanged$$inlined$addTextChangedListener$default$1 implements TextWatcher {
    final /* synthetic */ r $onTextChanged;

    @Override // android.text.TextWatcher
    public void afterTextChanged(@Nullable Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
    }

    public TextViewKt$doOnTextChanged$$inlined$addTextChangedListener$default$1(r rVar) {
        this.$onTextChanged = rVar;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        this.$onTextChanged.invoke(charSequence, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
    }
}
