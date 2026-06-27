package com.narvii.rate;

import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.util.CustomTypefaceSpan;
import com.narvii.util.PackageUtils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.ThumbImageView;

/* loaded from: classes3.dex */
public class RateDialog extends NVDialog {
    View btnClose;
    View btnNeverReminder;
    View btnRateNow;
    ConfigService configService;
    View fiveStar;
    View fourStar;
    View oneStar;
    PackageUtils packageUtils;
    View twoStar;

    public RateDialog(NVContext nVContext) {
        this(nVContext, R.style.CustomDialog);
    }

    public RateDialog(NVContext nVContext, int i) throws Resources.NotFoundException {
        super(nVContext, R.style.CustomDialog);
        super.setContentView(R.layout.dialog_rate);
        this.packageUtils = new PackageUtils(getContext());
        this.configService = (ConfigService) nVContext.getService("config");
        ((CommunityService) nVContext.getService("community")).getCommunity(this.configService.getCommunityId());
        ((ThumbImageView) findViewById(R.id.rate_community_icon)).setImageDrawable(NVApplication.getApplicationIcon(getContext()));
        this.btnClose = findViewById(R.id.rate_close);
        this.btnClose.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.rate.RateDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RateDialog.this.cancel();
            }
        });
        this.btnRateNow = findViewById(R.id.rate_now);
        this.btnNeverReminder = findViewById(R.id.rate_never);
        String str = getContext().getString(R.string.rate_app_title) + '\n' + this.packageUtils.getAppName() + "?";
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        int iIndexOf = str.indexOf(this.packageUtils.getAppName());
        spannableStringBuilder.setSpan(new CustomTypefaceSpan("", ViewUtils.getMontserratExtraBoldTypeface(getContext())), iIndexOf, this.packageUtils.getAppName().length() + iIndexOf, 33);
        ((TextView) findViewById(R.id.rate_community_title)).setText(spannableStringBuilder);
        ((TextView) findViewById(R.id.rate_community_name)).setText(this.packageUtils.getAppName());
        this.oneStar = findViewById(R.id.rate_one_star);
        this.twoStar = findViewById(R.id.rate_two_star);
        this.fourStar = findViewById(R.id.rate_four_star);
        this.fiveStar = findViewById(R.id.rate_five_star);
        ThumbImageView thumbImageView = (ThumbImageView) findViewById(R.id.rate_background);
        int color = getContext().getResources().getColor(R.color.rate_dialog_background);
        if (NVApplication.CLIENT_TYPE == 101 && this.configService.getTheme() != null) {
            color = this.configService.getTheme().colorPrimary();
        }
        ((TextView) findViewById(R.id.rate_community_name)).setText(this.packageUtils.getAppName());
        thumbImageView.setImageDrawable(new ColorDrawable(color));
    }

    public void setRateNowListener(View.OnClickListener onClickListener) {
        this.btnRateNow.setOnClickListener(onClickListener);
        this.fourStar.setOnClickListener(onClickListener);
        this.fiveStar.setOnClickListener(onClickListener);
        dismiss();
    }

    public void setNeverReminderListener(View.OnClickListener onClickListener) {
        this.btnNeverReminder.setOnClickListener(onClickListener);
        this.oneStar.setOnClickListener(onClickListener);
        this.twoStar.setOnClickListener(onClickListener);
        dismiss();
    }

    private void startShitAnimation(View view) {
        TranslateAnimation translateAnimation = new TranslateAnimation(-100.0f, 0.0f, -100.0f, 0.0f);
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 0.0f, 100.0f);
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        AnimationSet animationSet = new AnimationSet(false);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(rotateAnimation);
        animationSet.addAnimation(scaleAnimation);
        animationSet.addAnimation(alphaAnimation);
        animationSet.setDuration(1500L);
        view.startAnimation(animationSet);
    }
}
