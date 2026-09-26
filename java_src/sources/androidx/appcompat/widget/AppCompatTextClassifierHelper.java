package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes10.dex */
final class AppCompatTextClassifierHelper {

    @Nullable
    private TextClassifier mTextClassifier;

    @NonNull
    private TextView mTextView;

    @RequiresApi
    public void b(@Nullable TextClassifier textClassifier) {
        this.mTextClassifier = textClassifier;
    }

    @NonNull
    @RequiresApi
    public TextClassifier a() {
        TextClassifier textClassifier = this.mTextClassifier;
        if (textClassifier != null) {
            return textClassifier;
        }
        TextClassificationManager textClassificationManagerA = i.a(this.mTextView.getContext().getSystemService(h.a()));
        return textClassificationManagerA != null ? textClassificationManagerA.getTextClassifier() : TextClassifier.NO_OP;
    }

    AppCompatTextClassifierHelper(@NonNull TextView textView) {
        this.mTextView = (TextView) Preconditions.i(textView);
    }
}
