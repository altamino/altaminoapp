package com.narvii.util.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
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

/* loaded from: classes3.dex */
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

    public boolean blurBackground() {
        return false;
    }

    public boolean isDark() {
        return false;
    }

    private static class Stub {
        int flags;
        int layoutId;
        String title;

        Stub(String str, int i, int i2) {
            this.title = str;
            this.flags = i;
            this.layoutId = i2;
        }
    }

    public ActionSheetDialog(Context context) {
        this(context, R.layout.dialog_action_sheet_layout);
    }

    public ActionSheetDialog(Context context, int i) {
        super(context, R.style.CustomDialogWithAnimation);
        this.items = new ArrayList<>();
        this.showAnimation = true;
        this.setimg = new Runnable() { // from class: com.narvii.util.dialog.ActionSheetDialog.1
            int c;

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
                int i2 = this.c;
                this.c = i2 + 1;
                if (i2 < 4) {
                    Utils.post(this);
                }
            }
        };
        this.clickListener = new View.OnClickListener() { // from class: com.narvii.util.dialog.ActionSheetDialog.2
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
        this.refresh = new Runnable() { // from class: com.narvii.util.dialog.ActionSheetDialog.3
            @Override // java.lang.Runnable
            public void run() throws Resources.NotFoundException {
                if (ActionSheetDialog.this.dirty) {
                    ActionSheetDialog.this.updateViews();
                    ActionSheetDialog.this.dirty = false;
                }
            }
        };
        this.context = context;
        setContentView(i);
        this.cancelButton = findViewById(R.id.action_sheet_cancel);
        this.itemsLayout = (ViewGroup) findViewById(R.id.action_sheet_items);
        this.cancelButton.setOnClickListener(this.clickListener);
        this.backgroudImage = (ImageView) findViewById(R.id.blur_bg);
        findViewById(R.id.action_sheet_empty).setOnClickListener(this.clickListener);
        if (blurBackground()) {
            Bitmap bitmapBlur = blur();
            if (bitmapBlur == null) {
                this.backgroudImage.setImageDrawable(new ColorDrawable(1073741824));
                if (!this.blurReady) {
                    Utils.post(this.setimg);
                }
            } else {
                this.backgroudImage.setImageBitmap(bitmapBlur);
            }
        }
        if (isDark()) {
            if (Build.VERSION.SDK_INT >= 16) {
                this.cancelButton.setBackground(new ColorDrawable(Color.argb(40, 0, 0, 0)));
            } else {
                this.cancelButton.setBackgroundDrawable(new ColorDrawable(Color.argb(40, 0, 0, 0)));
            }
        }
    }

    public ImageView getBackgroudImage() {
        return this.backgroudImage;
    }

    public void setShowAnimation(boolean z) {
        this.showAnimation = z;
    }

    private Activity getActivity(Context context) {
        for (int i = 0; i < 6; i++) {
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

    public void setOnClickListener(DialogInterface.OnClickListener onClickListener) {
        this.listener = onClickListener;
    }

    protected void invalidate() {
        this.dirty = true;
        Utils.handler.removeCallbacks(this.refresh);
        Utils.post(this.refresh);
    }

    public void addItems(List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.items.add(new Stub(it.next(), 0, 0));
        }
        invalidate();
    }

    public void addItems(String... strArr) {
        addItems(Arrays.asList(strArr));
    }

    public void addItems(int... iArr) {
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i : iArr) {
            arrayList.add(getContext().getString(i));
        }
        addItems(arrayList);
    }

    public void addItem(String str, int i, int i2) {
        this.items.add(new Stub(str, i, i2));
        invalidate();
    }

    public void addItem(String str, int i) {
        addItem(str, i, 0);
    }

    public void addItem(int i, int i2) {
        addItem(getContext().getString(i), i2, 0);
    }

    public void addItem(int i, int i2, int i3) {
        addItem(getContext().getString(i), i2, i3);
    }

    public void addItem(String str, boolean z) {
        addItem(str, z ? 1 : 0, 0);
    }

    public void addItem(int i, boolean z) {
        addItem(getContext().getString(i), z);
    }

    public void clearItems() {
        this.items.clear();
        invalidate();
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        this.title = charSequence;
        invalidate();
    }

    public View setCustomView(int i) {
        this.customView = getLayoutInflater().inflate(i, this.itemsLayout, false);
        invalidate();
        return this.customView;
    }

    public View findCustomViewById(int i) {
        View view = this.customView;
        if (view == null) {
            return null;
        }
        return view.findViewById(i);
    }

    public void setCancelText(int i) {
        View view = this.cancelButton;
        if (view != null) {
            ((Button) view).setText(i);
        }
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

    protected void updateViews() throws Resources.NotFoundException {
        boolean z;
        this.itemsLayout.removeAllViews();
        LayoutInflater layoutInflater = getLayoutInflater();
        int color = getContext().getResources().getColor(R.color.action_sheet_normal);
        int color2 = getContext().getResources().getColor(R.color.action_sheet_danger);
        if (TextUtils.isEmpty(this.title)) {
            z = true;
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
            z = false;
        }
        if (this.customView != null) {
            boolean zIsEmpty = this.items.isEmpty();
            if (z) {
                if (isDark()) {
                    this.customView.setBackgroundResource(zIsEmpty ? R.drawable.button_action_sheet_round_dark : R.drawable.button_action_sheet_top_black);
                } else {
                    this.customView.setBackgroundResource(zIsEmpty ? R.drawable.button_action_sheet_round : R.drawable.button_action_sheet_top);
                }
                z = false;
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
        boolean z2 = z;
        int i = 0;
        while (i < size) {
            Stub stub = this.items.get(i);
            int i2 = stub.layoutId;
            if (i2 == 0) {
                if (isDark()) {
                    i2 = R.layout.dialog_action_sheet_button_dark;
                } else {
                    i2 = R.layout.dialog_action_sheet_button;
                }
            }
            View viewInflate = layoutInflater.inflate(i2, this.itemsLayout, false);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.text);
            if (textView2 != null) {
                textView2.setText(stub.title);
                textView2.setTextColor((stub.flags & 1) != 0 ? color2 : color);
            }
            View viewFindViewById = viewInflate.findViewById(R.id.radio);
            if (viewFindViewById instanceof TextView) {
                viewFindViewById.setVisibility((stub.flags & 12) != 0 ? 0 : 4);
                int i3 = stub.flags;
                if ((i3 & 4) != 0) {
                    ((TextView) viewFindViewById).setText(R.string.ion_ios_circle_filled);
                } else if ((i3 & 8) != 0) {
                    ((TextView) viewFindViewById).setText(R.string.ion_ios_circle_outline);
                }
            }
            boolean z3 = i == size + (-1);
            if (z2) {
                if (isDark()) {
                    viewInflate.setBackgroundResource(z3 ? R.drawable.button_action_sheet_round_dark : R.drawable.button_action_sheet_top_black);
                } else {
                    viewInflate.setBackgroundResource(z3 ? R.drawable.button_action_sheet_round : R.drawable.button_action_sheet_top);
                }
                z2 = false;
            } else if (isDark()) {
                viewInflate.setBackgroundResource(z3 ? R.drawable.button_action_sheet_bottom_dark : R.drawable.button_action_sheet_middle_dark);
            } else {
                viewInflate.setBackgroundResource(z3 ? R.drawable.button_action_sheet_bottom : R.drawable.button_action_sheet_middle);
            }
            viewInflate.setId(i);
            viewInflate.setOnClickListener(this.clickListener);
            this.itemsLayout.addView(viewInflate);
            if (!z3) {
                if (isDark()) {
                    layoutInflater.inflate(R.layout.dialog_action_sheet_divider, this.itemsLayout, true);
                } else {
                    layoutInflater.inflate(R.layout.dialog_action_sheet_divider, this.itemsLayout, true);
                }
            }
            i++;
        }
        this.itemsLayout.addView(this.cancelButton);
        this.dirty = false;
    }
}
