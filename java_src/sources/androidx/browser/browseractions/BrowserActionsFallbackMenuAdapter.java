package androidx.browser.browseractions;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.browser.R;
import androidx.core.content.res.ResourcesCompat;
import com.google.common.util.concurrent.k;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes8.dex */
@Deprecated
class BrowserActionsFallbackMenuAdapter extends BaseAdapter {
    private final Context mContext;
    private final List<BrowserActionItem> mMenuItems;

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    static class ViewHolderItem {
        final ImageView mIcon;
        final TextView mText;

        ViewHolderItem(ImageView imageView, TextView textView) {
            this.mIcon = imageView;
            this.mText = textView;
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mMenuItems.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return this.mMenuItems.get(i10);
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        final ViewHolderItem viewHolderItem;
        BrowserActionItem browserActionItem = this.mMenuItems.get(i10);
        if (view == null) {
            view = LayoutInflater.from(this.mContext).inflate(R.layout.browser_actions_context_menu_row, (ViewGroup) null);
            ImageView imageView = (ImageView) view.findViewById(R.id.browser_actions_menu_item_icon);
            TextView textView = (TextView) view.findViewById(R.id.browser_actions_menu_item_text);
            if (imageView == null || textView == null) {
                throw new IllegalStateException("Browser Actions fallback UI does not contain necessary Views.");
            }
            viewHolderItem = new ViewHolderItem(imageView, textView);
            view.setTag(viewHolderItem);
        } else {
            viewHolderItem = (ViewHolderItem) view.getTag();
        }
        final String strE = browserActionItem.e();
        viewHolderItem.mText.setText(strE);
        if (browserActionItem.b() != 0) {
            viewHolderItem.mIcon.setImageDrawable(ResourcesCompat.e(this.mContext.getResources(), browserActionItem.b(), null));
        } else if (browserActionItem.c() != null) {
            final k<Bitmap> kVarA = BrowserServiceFileProvider.a(this.mContext.getContentResolver(), browserActionItem.c());
            kVarA.addListener(new Runnable() { // from class: androidx.browser.browseractions.BrowserActionsFallbackMenuAdapter.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    Bitmap bitmap;
                    if (TextUtils.equals(strE, viewHolderItem.mText.getText())) {
                        try {
                            bitmap = (Bitmap) kVarA.get();
                        } catch (InterruptedException | ExecutionException unused) {
                            bitmap = null;
                        }
                        if (bitmap != null) {
                            viewHolderItem.mIcon.setVisibility(0);
                            viewHolderItem.mIcon.setImageBitmap(bitmap);
                        } else {
                            viewHolderItem.mIcon.setVisibility(4);
                            viewHolderItem.mIcon.setImageBitmap(null);
                        }
                    }
                }
            }, new Executor() { // from class: androidx.browser.browseractions.BrowserActionsFallbackMenuAdapter.2
                @Override // java.util.concurrent.Executor
                public void execute(@NonNull Runnable runnable) {
                    runnable.run();
                }
            });
        } else {
            viewHolderItem.mIcon.setImageBitmap(null);
            viewHolderItem.mIcon.setVisibility(4);
        }
        return view;
    }
}
