package androidx.preference;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public class PreferenceViewHolder extends RecyclerView.ViewHolder {

    @Nullable
    private final Drawable mBackground;
    private final SparseArray<View> mCachedViews;
    private boolean mDividerAllowedAbove;
    private boolean mDividerAllowedBelow;
    private ColorStateList mTitleTextColors;

    public boolean b() {
        return this.mDividerAllowedAbove;
    }

    public boolean c() {
        return this.mDividerAllowedBelow;
    }

    public void e(boolean z6) {
        this.mDividerAllowedAbove = z6;
    }

    public void f(boolean z6) {
        this.mDividerAllowedBelow = z6;
    }

    public View a(@IdRes int i10) {
        View view = this.mCachedViews.get(i10);
        if (view != null) {
            return view;
        }
        View viewFindViewById = this.itemView.findViewById(i10);
        if (viewFindViewById != null) {
            this.mCachedViews.put(i10, viewFindViewById);
        }
        return viewFindViewById;
    }

    void d() {
        Drawable background = this.itemView.getBackground();
        Drawable drawable = this.mBackground;
        if (background != drawable) {
            ViewCompat.y0(this.itemView, drawable);
        }
        TextView textView = (TextView) a(android.R.id.title);
        if (textView == null || this.mTitleTextColors == null || textView.getTextColors().equals(this.mTitleTextColors)) {
            return;
        }
        textView.setTextColor(this.mTitleTextColors);
    }

    PreferenceViewHolder(@NonNull View view) {
        super(view);
        SparseArray<View> sparseArray = new SparseArray<>(4);
        this.mCachedViews = sparseArray;
        TextView textView = (TextView) view.findViewById(android.R.id.title);
        sparseArray.put(android.R.id.title, textView);
        sparseArray.put(android.R.id.summary, view.findViewById(android.R.id.summary));
        sparseArray.put(android.R.id.icon, view.findViewById(android.R.id.icon));
        int i10 = R.id.icon_frame;
        sparseArray.put(i10, view.findViewById(i10));
        sparseArray.put(16908350, view.findViewById(16908350));
        this.mBackground = view.getBackground();
        if (textView != null) {
            this.mTitleTextColors = textView.getTextColors();
        }
    }
}
