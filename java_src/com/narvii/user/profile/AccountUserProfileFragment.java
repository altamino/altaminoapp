package com.narvii.user.profile;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
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

/* loaded from: classes3.dex */
public class AccountUserProfileFragment extends NVFragment {
    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.user_profile_header_global, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        List<Media> list;
        super.onViewCreated(view, bundle);
        setTitle("");
        User user = (User) JacksonUtils.readAs(getStringParam(GlobalProfileFragment.KEY_USER), User.class);
        if (user == null) {
            return;
        }
        int i = 0;
        boolean z = user.isModerator() || user.isSystem();
        SlideshowView slideshowView = (SlideshowView) view.findViewById(R.id.slideshow);
        slideshowView.noSlide = false;
        slideshowView.setMediaList(user.mediaList);
        slideshowView.setVisibility(z ? 4 : 0);
        BubbleBackground bubbleBackground = (BubbleBackground) view.findViewById(R.id.bubble);
        if (z || ((list = user.mediaList) != null && !list.isEmpty())) {
            i = 4;
        }
        bubbleBackground.setVisibility(i);
        bubbleBackground.set(user.id());
        if (z) {
            view.setBackgroundDrawable(((ConfigService) getService("config")).getTheme().drawerImage());
        }
        ((ThumbImageView) view.findViewById(R.id.avatar)).setImageUrl(user.icon());
        ((TextView) view.findViewById(R.id.nickname)).setText(user.nickname());
    }
}
