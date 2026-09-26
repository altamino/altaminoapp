package com.narvii.post.entry;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.content.ContextCompat;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.widget.ThumbImageView;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes10.dex */
public class PostEntryView extends RelativeLayout implements View.OnClickListener {
    private static int screenSize;
    private View activityRootView;
    private View frame;
    private int lift1;
    private int lift2;
    View.OnClickListener onPostButtonClickListener;
    private boolean pendingUpdate;

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void setOnPostButtonClickListener(View.OnClickListener onClickListener) {
        this.onPostButtonClickListener = onClickListener;
    }

    private void update(boolean z6) {
        int i10;
        int i11;
        int i12 = this.lift1;
        if (i12 == Integer.MIN_VALUE || (i11 = this.lift2) == Integer.MIN_VALUE) {
            int height = getHeight();
            int top = this.frame.getTop();
            if (height == 0 || top == 0) {
                this.pendingUpdate = true;
                i10 = 0;
            } else {
                i10 = top - height;
            }
        } else {
            i10 = i12 + i11;
        }
        if (z6) {
            this.frame.animate().translationY(-i10).setInterpolator(new DecelerateInterpolator()).setDuration(400L).start();
        } else {
            this.frame.setTranslationY(-i10);
        }
    }

    public void setButtonColor(int i10) {
        ThumbImageView thumbImageView = (ThumbImageView) findViewById(R.id.post_entry_btn2);
        if (thumbImageView != null) {
            thumbImageView.defaultDrawable = new ColorDrawable(i10);
            View viewFindViewById = findViewById(R.id.theme_bg);
            if (viewFindViewById != null) {
                ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
                shapeDrawable.getPaint().setColor(Utils.getColor(i10, 0.3f));
                viewFindViewById.setBackgroundDrawable(shapeDrawable);
            }
        }
    }

    public void setEntryIcon(int i10) {
        Drawable drawable;
        ImageView imageView = (ImageView) findViewById(R.id.post_entry_icon);
        if (imageView == null || (drawable = ContextCompat.getDrawable(getContext(), i10)) == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
    }

    public void setLift1(int i10, boolean z6) {
        if (this.lift1 != i10) {
            this.lift1 = i10;
            update(z6);
        }
    }

    public void setLift2(int i10, boolean z6) {
        if (this.lift2 != i10) {
            this.lift2 = i10;
            update(z6);
        }
    }

    public PostEntryView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
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
                        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, intent);
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

    @Override // android.view.View
    protected void onFinishInflate() {
        int iColorPrimary;
        super.onFinishInflate();
        this.frame = findViewById(R.id.post_entry_frame);
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext != null) {
            iColorPrimary = ((ConfigService) nVContext.getService("config")).getTheme().colorPrimary();
        } else {
            iColorPrimary = -7829368;
        }
        ((ThumbImageView) findViewById(R.id.post_entry_btn2)).defaultDrawable = new ColorDrawable(iColorPrimary);
        View viewFindViewById = findViewById(R.id.theme_bg);
        if (viewFindViewById != null) {
            ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
            shapeDrawable.getPaint().setColor(Utils.getColor(iColorPrimary, 0.3f));
            viewFindViewById.setBackgroundDrawable(shapeDrawable);
        }
        findViewById(R.id.post_entry_btn).setOnClickListener(this);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        int i14;
        super.onLayout(z6, i10, i11, i12, i13);
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
            if (height > screenSize / 2) {
                i14 = 4;
            } else {
                i14 = 0;
            }
            setVisibility(i14);
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
