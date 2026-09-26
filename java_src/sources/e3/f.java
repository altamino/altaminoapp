package e3;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes9.dex */
public class f extends Property<ImageView, Matrix> {
    private final Matrix matrix;

    public f() {
        super(Matrix.class, "imageMatrixProperty");
        this.matrix = new Matrix();
    }

    @Override // android.util.Property
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Matrix get(@NonNull ImageView imageView) {
        this.matrix.set(imageView.getImageMatrix());
        return this.matrix;
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void set(@NonNull ImageView imageView, @NonNull Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
