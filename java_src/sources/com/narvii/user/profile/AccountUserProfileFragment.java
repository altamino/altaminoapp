package com.narvii.user.profile;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.config.ConfigService;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.util.JacksonUtils;
import com.narvii.widget.BubbleBackground;
import com.narvii.widget.SlideshowView;
import com.narvii.widget.ThumbImageView;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class AccountUserProfileFragment extends NVFragment {
    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.user_profile_header_global, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        boolean z6;
        int i10;
        List<Media> list;
        super.onViewCreated(view, bundle);
        setTitle("");
        User user = (User) JacksonUtils.readAs(getStringParam(GlobalProfileFragment.KEY_USER), User.class);
        if (user == null) {
            return;
        }
        int i11 = 0;
        if (!user.isModerator() && !user.isSystem()) {
            z6 = false;
        } else {
            z6 = true;
        }
        SlideshowView slideshowView = (SlideshowView) view.findViewById(R.id.slideshow);
        slideshowView.noSlide = false;
        slideshowView.setMediaList(user.mediaList);
        if (z6) {
            i10 = 4;
        } else {
            i10 = 0;
        }
        slideshowView.setVisibility(i10);
        BubbleBackground bubbleBackground = (BubbleBackground) view.findViewById(R.id.bubble);
        if (z6 || ((list = user.mediaList) != null && !list.isEmpty())) {
            i11 = 4;
        }
        bubbleBackground.setVisibility(i11);
        bubbleBackground.set(user.id());
        if (z6) {
            view.setBackgroundDrawable(((ConfigService) getService("config")).getTheme().drawerImage());
        }
        ((ThumbImageView) view.findViewById(R.id.avatar)).setImageUrl(user.icon());
        ((TextView) view.findViewById(R.id.nickname)).setText(user.nickname());
    }
}
