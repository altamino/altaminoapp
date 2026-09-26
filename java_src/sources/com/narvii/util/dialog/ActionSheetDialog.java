package com.narvii.util.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.app.NVDialog;
import com.narvii.lib.R;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.blur.NativeBlurProcess;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.image.Screenshot;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ActionSheetDialog extends NVDialog {
    public static final int FLAG_DANGER = 1;
    public static final int FLAG_RADIO_OFF = 8;
    public static final int FLAG_RADIO_ON = 4;
    private ImageView backgroudImage;
    boolean blurReady;
    private View cancelButton;
    private final View.OnClickListener clickListener;
    private Context context;
    private View customView;
    private boolean dirty;
    private final ArrayList<Stub> items;
    private ViewGroup itemsLayout;
    private DialogInterface.OnClickListener listener;
    private final Runnable refresh;
    private final Runnable setimg;
    private boolean showAnimation;
    private CharSequence title;

    public ActionSheetDialog(Context context) {
        this(context, R.layout.dialog_action_sheet_layout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap blur() {
        try {
            this.blurReady = true;
            return new NativeBlurProcess().blur(Screenshot.takeScreenshot(getActivity(getContext()), 0.5f), 50.0f);
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
            return null;
        }
    }

    private Activity getActivity(Context context) {
        for (int i10 = 0; i10 < 6; i10++) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            if (context instanceof ContextWrapper) {
                Context baseContext = ((ContextWrapper) context).getBaseContext();
                if (baseContext == null || baseContext == context) {
                    return null;
                }
                context = baseContext;
            }
        }
        return null;
    }

    public void addItem(String str, int i10, int i11) {
        this.items.add(new Stub(str, i10, i11));
        invalidate();
    }

    public void addItems(List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.items.add(new Stub(it.next(), 0, 0));
        }
        invalidate();
    }

    public boolean blurBackground() {
        return false;
    }

    public ImageView getBackgroudImage() {
        return this.backgroudImage;
    }

    protected void invalidate() {
        this.dirty = true;
        Utils.handler.removeCallbacks(this.refresh);
        Utils.post(this.refresh);
    }

    public boolean isDark() {
        return false;
    }

    public void setOnClickListener(DialogInterface.OnClickListener onClickListener) {
        this.listener = onClickListener;
    }

    public void setShowAnimation(boolean z6) {
        this.showAnimation = z6;
    }

    private static class Stub {
        int flags;
        int layoutId;
        String title;

        Stub(String str, int i10, int i11) {
            this.title = str;
            this.flags = i10;
            this.layoutId = i11;
        }
    }

    public ActionSheetDialog(Context context, int i10) {
        super(context, R.style.CustomDialogWithAnimation);
        this.items = new ArrayList<>();
        this.showAnimation = true;
        Runnable runnable = new Runnable() { // from class: com.narvii.util.dialog.ActionSheetDialog.1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            int f2823c;

            @Override // java.lang.Runnable
            public void run() {
                Bitmap bitmapBlur = ActionSheetDialog.this.blur();
                if (bitmapBlur != null) {
                    ActionSheetDialog.this.backgroudImage.setImageBitmap(bitmapBlur);
                    return;
                }
                if (ActionSheetDialog.this.blurReady) {
                    return;
                }
                int i11 = this.f2823c;
                this.f2823c = i11 + 1;
                if (i11 < 4) {
                    Utils.post(this);
                }
            }
        };
        this.setimg = runnable;
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.util.dialog.ActionSheetDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() != R.id.action_sheet_cancel && view.getId() != R.id.action_sheet_empty) {
                    if (ActionSheetDialog.this.listener != null) {
                        ActionSheetDialog.this.listener.onClick(ActionSheetDialog.this, view.getId());
                        ActionSheetDialog.this.dismiss();
                        return;
                    }
                    return;
                }
                ActionSheetDialog.this.cancel();
            }
        };
        this.clickListener = onClickListener;
        this.refresh = new Runnable() { // from class: com.narvii.util.dialog.ActionSheetDialog.3
            @Override // java.lang.Runnable
            public void run() {
                if (ActionSheetDialog.this.dirty) {
                    ActionSheetDialog.this.updateViews();
                    ActionSheetDialog.this.dirty = false;
                }
            }
        };
        this.context = context;
        setContentView(i10);
        this.cancelButton = findViewById(R.id.action_sheet_cancel);
        this.itemsLayout = (ViewGroup) findViewById(R.id.action_sheet_items);
        this.cancelButton.setOnClickListener(onClickListener);
        this.backgroudImage = (ImageView) findViewById(R.id.blur_bg);
        findViewById(R.id.action_sheet_empty).setOnClickListener(onClickListener);
        if (blurBackground()) {
            Bitmap bitmapBlur = blur();
            if (bitmapBlur == null) {
                this.backgroudImage.setImageDrawable(new ColorDrawable(1073741824));
                if (!this.blurReady) {
                    Utils.post(runnable);
                }
            } else {
                this.backgroudImage.setImageBitmap(bitmapBlur);
            }
        }
        if (isDark()) {
            this.cancelButton.setBackground(new ColorDrawable(Color.argb(40, 0, 0, 0)));
        }
    }

    public void clearItems() {
        this.items.clear();
        invalidate();
    }

    public View findCustomViewById(int i10) {
        View view = this.customView;
        if (view == null) {
            return null;
        }
        return view.findViewById(i10);
    }

    public void setCancelText(int i10) {
        View view = this.cancelButton;
        if (view != null) {
            ((Button) view).setText(i10);
        }
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        this.title = charSequence;
        invalidate();
    }

    @Override // com.narvii.app.NVDialog, android.app.Dialog
    public void show() {
        SoftKeyboard.hideSoftKeyboard(this.context);
        if (this.dirty) {
            Utils.handler.removeCallbacks(this.refresh);
            this.refresh.run();
        }
        super.show();
        if (this.showAnimation) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(200L);
            ImageView imageView = this.backgroudImage;
            if (imageView != null) {
                imageView.startAnimation(alphaAnimation);
            }
            this.itemsLayout.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.slide_up));
        }
    }

    protected void updateViews() {
        boolean z6;
        this.itemsLayout.removeAllViews();
        LayoutInflater layoutInflater = getLayoutInflater();
        int color = getContext().getResources().getColor(R.color.action_sheet_normal);
        int color2 = getContext().getResources().getColor(R.color.action_sheet_danger);
        if (TextUtils.isEmpty(this.title)) {
            z6 = true;
        } else {
            TextView textView = (TextView) layoutInflater.inflate(R.layout.dialog_action_sheet_title, this.itemsLayout, false);
            textView.setText(this.title);
            this.itemsLayout.addView(textView);
            if (this.items.isEmpty() && this.customView == null) {
                if (isDark()) {
                    textView.setBackgroundResource(R.drawable.button_action_sheet_round_dark);
                    textView.setTextColor(-1);
                } else {
                    textView.setBackgroundResource(R.drawable.button_action_sheet_round);
                }
            } else if (isDark()) {
                textView.setBackgroundResource(R.drawable.button_action_sheet_top_black);
                textView.setTextColor(-1);
            } else {
                textView.setBackgroundResource(R.drawable.button_action_sheet_top);
            }
            if (!this.items.isEmpty() && this.customView == null) {
                layoutInflater.inflate(R.layout.dialog_action_sheet_divider, this.itemsLayout, true);
            }
            z6 = false;
        }
        if (this.customView != null) {
            boolean zIsEmpty = this.items.isEmpty();
            if (z6) {
                if (isDark()) {
                    this.customView.setBackgroundResource(zIsEmpty ? R.drawable.button_action_sheet_round_dark : R.drawable.button_action_sheet_top_black);
                } else {
                    this.customView.setBackgroundResource(zIsEmpty ? R.drawable.button_action_sheet_round : R.drawable.button_action_sheet_top);
                }
                z6 = false;
            } else if (isDark()) {
                this.customView.setBackgroundResource(zIsEmpty ? R.drawable.button_action_sheet_bottom_dark : R.drawable.button_action_sheet_middle_dark);
            } else {
                this.customView.setBackgroundResource(zIsEmpty ? R.drawable.button_action_sheet_bottom : R.drawable.button_action_sheet_middle);
            }
            this.itemsLayout.addView(this.customView);
            if (!zIsEmpty) {
                if (isDark()) {
                    layoutInflater.inflate(R.layout.dialog_action_sheet_divider_dark, this.itemsLayout, true);
                } else {
                    layoutInflater.inflate(R.layout.dialog_action_sheet_divider, this.itemsLayout, true);
                }
            }
        }
        int size = this.items.size();
        int i10 = 0;
        while (i10 < size) {
            Stub stub = this.items.get(i10);
            int i11 = stub.layoutId;
            if (i11 == 0) {
                i11 = isDark() ? R.layout.dialog_action_sheet_button_dark : R.layout.dialog_action_sheet_button;
            }
            View viewInflate = layoutInflater.inflate(i11, this.itemsLayout, false);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.text);
            if (textView2 != null) {
                textView2.setText(stub.title);
                textView2.setTextColor((stub.flags & 1) != 0 ? color2 : color);
            }
            View viewFindViewById = viewInflate.findViewById(R.id.radio);
            if (viewFindViewById instanceof TextView) {
                viewFindViewById.setVisibility((stub.flags & 12) != 0 ? 0 : 4);
                int i12 = stub.flags;
                if ((i12 & 4) != 0) {
                    ((TextView) viewFindViewById).setText(R.string.ion_ios_circle_filled);
                } else if ((i12 & 8) != 0) {
                    ((TextView) viewFindViewById).setText(R.string.ion_ios_circle_outline);
                }
            }
            boolean z10 = i10 == size + (-1);
            if (z6) {
                if (isDark()) {
                    viewInflate.setBackgroundResource(z10 ? R.drawable.button_action_sheet_round_dark : R.drawable.button_action_sheet_top_black);
                } else {
                    viewInflate.setBackgroundResource(z10 ? R.drawable.button_action_sheet_round : R.drawable.button_action_sheet_top);
                }
                z6 = false;
            } else if (isDark()) {
                viewInflate.setBackgroundResource(z10 ? R.drawable.button_action_sheet_bottom_dark : R.drawable.button_action_sheet_middle_dark);
            } else {
                viewInflate.setBackgroundResource(z10 ? R.drawable.button_action_sheet_bottom : R.drawable.button_action_sheet_middle);
            }
            viewInflate.setId(i10);
            viewInflate.setOnClickListener(this.clickListener);
            this.itemsLayout.addView(viewInflate);
            if (!z10) {
                if (isDark()) {
                    layoutInflater.inflate(R.layout.dialog_action_sheet_divider, this.itemsLayout, true);
                } else {
                    layoutInflater.inflate(R.layout.dialog_action_sheet_divider, this.itemsLayout, true);
                }
            }
            i10++;
        }
        this.itemsLayout.addView(this.cancelButton);
        this.dirty = false;
    }

    public void addItem(String str, int i10) {
        addItem(str, i10, 0);
    }

    public View setCustomView(int i10) {
        this.customView = getLayoutInflater().inflate(i10, this.itemsLayout, false);
        invalidate();
        return this.customView;
    }

    public void addItem(int i10, int i11) {
        addItem(getContext().getString(i10), i11, 0);
    }

    public void addItems(String... strArr) {
        addItems(Arrays.asList(strArr));
    }

    public void addItem(int i10, int i11, int i12) {
        addItem(getContext().getString(i10), i11, i12);
    }

    public void addItems(int... iArr) {
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i10 : iArr) {
            arrayList.add(getContext().getString(i10));
        }
        addItems(arrayList);
    }

    public void addItem(String str, boolean z6) {
        addItem(str, z6 ? 1 : 0, 0);
    }

    public void addItem(int i10, boolean z6) {
        addItem(getContext().getString(i10), z6);
    }
}
