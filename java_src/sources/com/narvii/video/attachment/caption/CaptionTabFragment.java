package com.narvii.video.attachment.caption;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.narvii.app.FragmentDismissListener;
import com.narvii.app.FragmentRegister;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollableTabFragment;
import com.narvii.mediaeditor.R;
import com.narvii.paging.source.DataSource;
import com.narvii.util.JacksonUtils;
import com.narvii.util.ShareDataSourceHost;
import com.narvii.video.attachment.ResetAttachmentViewsListener;
import com.narvii.video.model.Caption;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public class CaptionTabFragment extends NVScrollableTabFragment implements CaptionEditListener, ResetAttachmentViewsListener {
    public static final int INDEX_COLOR = 0;
    public static final int INDEX_FONT = 2;
    public static final int INDEX_STYLE = 1;
    private Caption caption;
    public CaptionEditListener captionEditListener;
    public CaptionTabChangeListener captionTabChangeListener;
    public EditCaptionTextHost editCaptionTextHost;
    public FragmentDismissListener fragmentDismissListener;
    private Caption originalCaption;
    public ResetAttachmentViewsListener resetAttachmentViewsListener;
    public ShareDataSourceHost shareDataSourceHost;

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultOffScreenPage() {
        return 3;
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultTabIndex() {
        return 1;
    }

    public ShareDataSourceHost getShareDataSourceHost() {
        return this.shareDataSourceHost;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i10) {
        if (i10 < 3) {
            return "PlaceHolder";
        }
        return null;
    }

    public void setCaptionColor(int i10) {
        Fragment fragmentAtIndex = getFragmentAtIndex(getRealPositionOfIndex(0));
        if (fragmentAtIndex instanceof CaptionColorTabFragment) {
            Fragment fragmentAtIndex2 = ((CaptionColorTabFragment) fragmentAtIndex).getFragmentAtIndex(getRealPositionOfIndex(0));
            if (fragmentAtIndex2 instanceof CaptionColorFragment) {
                ((CaptionColorFragment) fragmentAtIndex2).setTextColor(i10);
            }
        }
    }

    public void dismiss(boolean z6) {
        CaptionTabChangeListener captionTabChangeListener;
        if (z6 && (captionTabChangeListener = this.captionTabChangeListener) != null) {
            captionTabChangeListener.revertCaption(this.originalCaption);
        }
        getFragmentManager().q().t(this).k();
        getFragmentManager().i0();
        FragmentDismissListener fragmentDismissListener = this.fragmentDismissListener;
        if (fragmentDismissListener != null) {
            fragmentDismissListener.onFragmentDismiss(this);
        }
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Bundle getBundles(int i10) {
        if (i10 == 0) {
            Bundle bundle = new Bundle();
            bundle.putInt("color", this.caption.textColor);
            return bundle;
        }
        if (i10 == 1) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("styleId", this.caption.styleId);
            bundle2.putString("styleObjectId", this.caption.styleObjectId);
            return bundle2;
        }
        if (i10 != 2) {
            return null;
        }
        Bundle bundle3 = new Bundle();
        bundle3.putString("fontPath", this.caption.fontPath);
        bundle3.putString("fontObjectId", this.caption.fontObjectId);
        return bundle3;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Class<? extends NVFragment> getFragment(int i10) {
        if (i10 == 0) {
            return CaptionColorTabFragment.class;
        }
        if (i10 == 1) {
            return ((FragmentRegister) getService("fragmentRegister")).getFragmentClass("captionStyle");
        }
        if (i10 != 2) {
            return null;
        }
        return CaptionFontFragment.class;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Drawable getIconDrawable(int i10) {
        if (i10 == 0) {
            return ContextCompat.getDrawable(getContext(), R.drawable.ic_caption_color_selected);
        }
        if (i10 == 1) {
            return ContextCompat.getDrawable(getContext(), R.drawable.ic_caption_style_selected);
        }
        if (i10 != 2) {
            return null;
        }
        return ContextCompat.getDrawable(getContext(), R.drawable.ic_caption_font_selected);
    }

    public DataSource getSharedDataSource(String str) {
        ShareDataSourceHost shareDataSourceHost = this.shareDataSourceHost;
        if (shareDataSourceHost != null) {
            return shareDataSourceHost.getSharedDataSource(str);
        }
        return null;
    }

    @Override // com.narvii.video.attachment.caption.CaptionEditListener
    public void onColorChanged(int i10, int i11, boolean z6) {
        CaptionEditListener captionEditListener = this.captionEditListener;
        if (captionEditListener != null) {
            captionEditListener.onColorChanged(i10, i11, z6);
        }
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_caption_tab, viewGroup, false);
    }

    @Override // com.narvii.video.attachment.caption.CaptionEditListener
    public void onFontChanged(String str, String str2) {
        CaptionEditListener captionEditListener = this.captionEditListener;
        if (captionEditListener != null) {
            captionEditListener.onFontChanged(str, str2);
        }
    }

    @Override // com.narvii.video.attachment.caption.CaptionEditListener
    public void onStyleChanged(String str, String str2) {
        CaptionEditListener captionEditListener = this.captionEditListener;
        if (captionEditListener != null) {
            captionEditListener.onStyleChanged(str, str2);
        }
    }

    @Override // com.narvii.video.attachment.ResetAttachmentViewsListener
    public void resetViewsWhenEditing() {
        ResetAttachmentViewsListener resetAttachmentViewsListener = this.resetAttachmentViewsListener;
        if (resetAttachmentViewsListener != null) {
            resetAttachmentViewsListener.resetViewsWhenEditing();
        }
    }

    public void setSharedDataSource(String str, DataSource dataSource) {
        ShareDataSourceHost shareDataSourceHost = this.shareDataSourceHost;
        if (shareDataSourceHost != null) {
            shareDataSourceHost.setSharedDataSource(str, dataSource);
        }
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public Drawable tabLayoutBackground() {
        return new ColorDrawable(-13290181);
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected View getTabView(String str, Drawable drawable) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.caption_tab_item, (ViewGroup) null);
        ((ImageView) viewInflate.findViewById(R.id.tab_icon)).setImageDrawable(drawable);
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.originalCaption = (Caption) JacksonUtils.readAs(getStringParam("caption"), Caption.class);
        this.caption = (Caption) JacksonUtils.readAs(getStringParam("caption"), Caption.class);
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected void onInstantiateItem(Object obj) {
        super.onInstantiateItem(obj);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.caption_tab_keyboard);
        int i10 = R.id.tab_icon;
        ImageView imageView = (ImageView) viewFindViewById.findViewById(i10);
        imageView.setImageResource(R.drawable.ic_caption_keyboard);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.attachment.caption.CaptionTabFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                EditCaptionTextHost editCaptionTextHost = CaptionTabFragment.this.editCaptionTextHost;
                if (editCaptionTextHost != null) {
                    editCaptionTextHost.editCurrentCaptionText();
                }
            }
        });
        this.scrollableTabLayout.setIndicatorAttachedViewId(i10);
        this.scrollableTabLayout.scrollWhenGlobalLayoutChanged = false;
        this.mViewPager.disableScroll = true;
        view.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.attachment.caption.CaptionTabFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                CaptionTabFragment.this.dismiss(true);
            }
        });
        view.findViewById(R.id.submit).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.attachment.caption.CaptionTabFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                CaptionTabFragment.this.dismiss(false);
            }
        });
    }
}
