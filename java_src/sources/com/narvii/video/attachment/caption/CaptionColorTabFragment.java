package com.narvii.video.attachment.caption;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollableTabFragment;
import com.narvii.mediaeditor.R;
import com.narvii.modulization.ConfigApiRequestHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.video.model.Caption;
import com.narvii.widget.NVViewPager;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public class CaptionColorTabFragment extends NVScrollableTabFragment implements CaptionEditListener {
    public static final int SHADOW_COLOR = 2;
    public static final int STROKE_COLOR = 1;
    public static final int TEXT_COLOR = 0;
    private Caption caption;

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultOffScreenPage() {
        return 5;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    @Nullable
    protected Class<? extends NVFragment> getFragment(int i10) {
        return CaptionColorFragment.class;
    }

    @Override // com.narvii.video.attachment.caption.CaptionEditListener
    public void onFontChanged(String str, String str2) {
    }

    @Override // com.narvii.video.attachment.caption.CaptionEditListener
    public void onStyleChanged(String str, String str2) {
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Bundle getBundles(int i10) {
        if (i10 == 0) {
            Bundle bundle = new Bundle();
            bundle.putInt("color", this.caption.textColor);
            bundle.putBoolean(ConfigApiRequestHelper.ENABLED, true);
            bundle.putInt("type", 1);
            return bundle;
        }
        if (i10 == 1) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt("color", this.caption.strokeColor);
            bundle2.putInt("type", 2);
            bundle2.putBoolean("supportDisable", true);
            bundle2.putBoolean(ConfigApiRequestHelper.ENABLED, this.caption.hasStroke);
            return bundle2;
        }
        if (i10 != 2) {
            return null;
        }
        Bundle bundle3 = new Bundle();
        bundle3.putInt("color", this.caption.shadowColor);
        bundle3.putInt("type", 3);
        bundle3.putBoolean("supportDisable", true);
        bundle3.putBoolean(ConfigApiRequestHelper.ENABLED, this.caption.hasShadow);
        return bundle3;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    @Nullable
    protected String getTabLabel(int i10) {
        if (i10 == 0) {
            return getString(R.string.text);
        }
        if (i10 == 1) {
            return getString(R.string.stroke);
        }
        if (i10 == 2) {
            return getString(R.string.shadow);
        }
        return null;
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_tab_caption_color, viewGroup, false);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public Drawable tabLayoutBackground() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected View getTabView(String str, Drawable drawable) {
        View viewInflate = getActivity().getLayoutInflater().inflate(R.layout.caption_color_tab_item, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.tab_title)).setText(str);
        return viewInflate;
    }

    @Override // com.narvii.video.attachment.caption.CaptionEditListener
    public void onColorChanged(int i10, int i11, boolean z6) {
        if (getParentFragment() instanceof CaptionEditListener) {
            ((CaptionEditListener) getParentFragment()).onColorChanged(i10, i11, z6);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.caption = (Caption) JacksonUtils.readAs(getStringParam("caption"), Caption.class);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            nVViewPager.disableScroll = true;
        }
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    protected void updateTabView(int i10) {
        if (getTabLayout() == null) {
            return;
        }
        for (int i11 = 0; i11 < getTabLayout().getTabCount(); i11++) {
            View childTabAt = getTabLayout().getChildTabAt(i11);
            if (childTabAt != null) {
                TextView textView = (TextView) childTabAt.findViewById(R.id.tab_title);
                View viewFindViewById = childTabAt.findViewById(R.id.indicator);
                if (i11 == i10) {
                    textView.setAlpha(1.0f);
                    textView.setTypeface(null, 1);
                    viewFindViewById.setVisibility(0);
                } else {
                    textView.setAlpha(0.6f);
                    textView.setTypeface(null, 0);
                    viewFindViewById.setVisibility(4);
                }
            }
        }
    }
}
