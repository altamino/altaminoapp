package com.narvii.post.entry;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.net.Uri;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.widget.ThumbImageView;

/* loaded from: classes3.dex */
public class PostEntryView extends RelativeLayout implements View.OnClickListener {
    private static int screenSize;
    private View activityRootView;
    private View frame;
    private int lift1;
    private int lift2;
    View.OnClickListener onPostButtonClickListener;
    private boolean pendingUpdate;

    public void setOnPostButtonClickListener(View.OnClickListener onClickListener) {
        this.onPostButtonClickListener = onClickListener;
    }

    public PostEntryView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setLift1(int i, boolean z) {
        if (this.lift1 != i) {
            this.lift1 = i;
            update(z);
        }
    }

    public void setLift2(int i, boolean z) {
        if (this.lift2 != i) {
            this.lift2 = i;
            update(z);
        }
    }

    private void update(boolean z) {
        int i;
        int i2;
        int i3 = this.lift1;
        if (i3 == Integer.MIN_VALUE || (i2 = this.lift2) == Integer.MIN_VALUE) {
            int height = getHeight();
            int top = this.frame.getTop();
            if (height == 0 || top == 0) {
                this.pendingUpdate = true;
                i = 0;
            } else {
                i = top - height;
            }
        } else {
            i = i3 + i2;
        }
        if (z) {
            this.frame.animate().translationY(-i).setInterpolator(new DecelerateInterpolator()).setDuration(400L).start();
        } else {
            this.frame.setTranslationY(-i);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.frame = findViewById(R.id.post_entry_frame);
        NVContext nVContext = Utils.getNVContext(getContext());
        int iColorPrimary = nVContext != null ? ((ConfigService) nVContext.getService("config")).getTheme().colorPrimary() : -7829368;
        ((ThumbImageView) findViewById(R.id.post_entry_btn2)).defaultDrawable = new ColorDrawable(iColorPrimary);
        View viewFindViewById = findViewById(R.id.theme_bg);
        if (viewFindViewById != null) {
            ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
            shapeDrawable.getPaint().setColor(Utils.getColor(iColorPrimary, 0.3f));
            viewFindViewById.setBackgroundDrawable(shapeDrawable);
        }
        findViewById(R.id.post_entry_btn).setOnClickListener(this);
    }

    public void setButtonColor(int i) {
        ThumbImageView thumbImageView = (ThumbImageView) findViewById(R.id.post_entry_btn2);
        if (thumbImageView != null) {
            thumbImageView.defaultDrawable = new ColorDrawable(i);
            View viewFindViewById = findViewById(R.id.theme_bg);
            if (viewFindViewById != null) {
                ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
                shapeDrawable.getPaint().setColor(Utils.getColor(i, 0.3f));
                viewFindViewById.setBackgroundDrawable(shapeDrawable);
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.activityRootView == null && (getParent() instanceof ViewGroup)) {
            this.activityRootView = ((ViewGroup) getParent()).findViewById(android.R.id.content);
        }
        View view = this.activityRootView;
        if (view != null) {
            int height = view.getRootView().getHeight() - this.activityRootView.getHeight();
            if (screenSize == 0) {
                DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
                screenSize = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
            }
            setVisibility(height > screenSize / 2 ? 4 : 0);
        }
    }

    public void setEntryIcon(int i) {
        Drawable drawable;
        ImageView imageView = (ImageView) findViewById(R.id.post_entry_icon);
        if (imageView == null || (drawable = ContextCompat.getDrawable(getContext(), i)) == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.post_entry_btn) {
            View.OnClickListener onClickListener = this.onPostButtonClickListener;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
            NVContext nVContext = Utils.getNVContext(getContext());
            if (nVContext != null) {
                AccountService accountService = (AccountService) nVContext.getService("account");
                if (accountService != null && !accountService.hasAccount()) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://login"));
                    intent.putExtra("promptType", "Required");
                    try {
                        nVContext.startActivity(intent);
                        return;
                    } catch (Exception unused) {
                        Log.e("unable to start login activity");
                        return;
                    }
                }
                Dialog dialog = (Dialog) nVContext.getService("postEntry");
                if (dialog != null) {
                    if (dialog.isShowing()) {
                        dialog.dismiss();
                    } else {
                        dialog.show();
                    }
                }
            }
        }
    }

    public void updateThemeUI() {
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext != null) {
            int iColorPrimary = ((ConfigService) nVContext.getService("config")).getTheme().colorPrimary();
            ThumbImageView thumbImageView = (ThumbImageView) findViewById(R.id.post_entry_btn2);
            if (thumbImageView != null) {
                thumbImageView.setImageDrawable(new ColorDrawable(iColorPrimary));
            }
            View viewFindViewById = findViewById(R.id.theme_bg);
            if (viewFindViewById != null) {
                ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
                shapeDrawable.getPaint().setColor(Utils.getColor(iColorPrimary, 0.3f));
                viewFindViewById.setBackgroundDrawable(shapeDrawable);
            }
        }
    }
}
