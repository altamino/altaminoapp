package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleCursorAdapter extends ResourceCursorAdapter {
    private CursorToStringConverter mCursorToStringConverter;

    @RestrictTo
    protected int[] mFrom;
    String[] mOriginalFrom;
    private int mStringConversionColumn;

    @RestrictTo
    protected int[] mTo;
    private ViewBinder mViewBinder;

    public interface CursorToStringConverter {
        CharSequence a(Cursor cursor);
    }

    public interface ViewBinder {
        boolean a(View view, Cursor cursor, int i10);
    }

    @Deprecated
    public SimpleCursorAdapter(Context context, int i10, Cursor cursor, String[] strArr, int[] iArr) {
        super(context, i10, cursor);
        this.mStringConversionColumn = -1;
        this.mTo = iArr;
        this.mOriginalFrom = strArr;
        k(cursor, strArr);
    }

    private void k(Cursor cursor, String[] strArr) {
        if (cursor == null) {
            this.mFrom = null;
            return;
        }
        int length = strArr.length;
        int[] iArr = this.mFrom;
        if (iArr == null || iArr.length != length) {
            this.mFrom = new int[length];
        }
        for (int i10 = 0; i10 < length; i10++) {
            this.mFrom[i10] = cursor.getColumnIndexOrThrow(strArr[i10]);
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public CharSequence a(Cursor cursor) {
        CursorToStringConverter cursorToStringConverter = this.mCursorToStringConverter;
        if (cursorToStringConverter != null) {
            return cursorToStringConverter.a(cursor);
        }
        int i10 = this.mStringConversionColumn;
        return i10 > -1 ? cursor.getString(i10) : super.a(cursor);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public void e(View view, Context context, Cursor cursor) {
        ViewBinder viewBinder = this.mViewBinder;
        int[] iArr = this.mTo;
        int length = iArr.length;
        int[] iArr2 = this.mFrom;
        for (int i10 = 0; i10 < length; i10++) {
            View viewFindViewById = view.findViewById(iArr[i10]);
            if (viewFindViewById != null && (viewBinder == null || !viewBinder.a(viewFindViewById, cursor, iArr2[i10]))) {
                String string = cursor.getString(iArr2[i10]);
                if (string == null) {
                    string = "";
                }
                if (viewFindViewById instanceof TextView) {
                    m((TextView) viewFindViewById, string);
                } else {
                    if (!(viewFindViewById instanceof ImageView)) {
                        throw new IllegalStateException(viewFindViewById.getClass().getName() + " is not a  view that can be bounds by this SimpleCursorAdapter");
                    }
                    l((ImageView) viewFindViewById, string);
                }
            }
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public Cursor j(Cursor cursor) {
        k(cursor, this.mOriginalFrom);
        return super.j(cursor);
    }

    public SimpleCursorAdapter(Context context, int i10, Cursor cursor, String[] strArr, int[] iArr, int i11) {
        super(context, i10, cursor, i11);
        this.mStringConversionColumn = -1;
        this.mTo = iArr;
        this.mOriginalFrom = strArr;
        k(cursor, strArr);
    }

    public void l(ImageView imageView, String str) {
        try {
            imageView.setImageResource(Integer.parseInt(str));
        } catch (NumberFormatException unused) {
            imageView.setImageURI(Uri.parse(str));
        }
    }

    public void m(TextView textView, String str) {
        textView.setText(str);
    }
}
