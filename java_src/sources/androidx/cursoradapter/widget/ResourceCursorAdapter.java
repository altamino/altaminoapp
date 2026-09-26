package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes9.dex */
public abstract class ResourceCursorAdapter extends CursorAdapter {
    private int mDropDownLayout;
    private LayoutInflater mInflater;
    private int mLayout;

    @Deprecated
    public ResourceCursorAdapter(Context context, int i10, Cursor cursor) {
        super(context, cursor);
        this.mDropDownLayout = i10;
        this.mLayout = i10;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public View g(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.mInflater.inflate(this.mDropDownLayout, viewGroup, false);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public View h(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.mInflater.inflate(this.mLayout, viewGroup, false);
    }

    @Deprecated
    public ResourceCursorAdapter(Context context, int i10, Cursor cursor, boolean z6) {
        super(context, cursor, z6);
        this.mDropDownLayout = i10;
        this.mLayout = i10;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public ResourceCursorAdapter(Context context, int i10, Cursor cursor, int i11) {
        super(context, cursor, i11);
        this.mDropDownLayout = i10;
        this.mLayout = i10;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }
}
