package com.narvii.user.title;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.influencer.FanClub;
import com.narvii.model.User;
import com.narvii.model.api.UserTitle;
import com.narvii.util.PaletteUtils;
import com.narvii.util.Utils;
import com.narvii.util.layouts.NVFlowLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class UserTitleFlowView extends NVFlowLayout {
    boolean darkTheme;
    UserTitleColorHelper userTitleColorHelper;

    public void setDarkTheme(boolean z6) {
        this.darkTheme = z6;
    }

    public void setUser(final User user, boolean z6) {
        List<String> verifiedTagList;
        User user2;
        removeAllViews();
        if (user == null) {
            setOnClickListener(null);
            return;
        }
        ArrayList arrayList = (ArrayList) user.customTitles();
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        if (z6) {
            List<FanClub> activeFanClubList = user.getActiveFanClubList();
            if (activeFanClubList != null) {
                ArrayList arrayList2 = new ArrayList();
                for (int i10 = 0; i10 < activeFanClubList.size(); i10++) {
                    FanClub fanClub = activeFanClubList.get(i10);
                    if (fanClub != null && (user2 = fanClub.targetUserProfile) != null && !TextUtils.isEmpty(user2.nickname())) {
                        arrayList2.add(new UserTitle(fanClub.targetUserProfile.nickname(), 2));
                    }
                }
                arrayList.addAll(0, arrayList2);
            }
            if (user.isVerified() && (verifiedTagList = user.getVerifiedTagList()) != null) {
                ArrayList arrayList3 = new ArrayList();
                for (String str : verifiedTagList) {
                    if (!TextUtils.isEmpty(str)) {
                        arrayList3.add(new UserTitle(str, 3));
                    }
                }
                arrayList.addAll(0, arrayList3);
            }
            String strRoleName = user.roleName();
            if (!TextUtils.isEmpty(strRoleName)) {
                arrayList.add(0, new UserTitle(strRoleName, 1));
            }
        }
        setTitleList(arrayList);
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.title.UserTitleFlowView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UserTitleFlowView.this.showingMoreView()) {
                    new UserTitleDialog(UserTitleFlowView.this.getContext(), user).show();
                }
            }
        });
    }

    private Drawable getBackgroundOfUserTitle(UserTitle userTitle) {
        int i10 = userTitle.type;
        if (i10 == 1) {
            return ContextCompat.getDrawable(getContext(), R.drawable.user_title_bg_role);
        }
        if (i10 == 2) {
            return ContextCompat.getDrawable(getContext(), this.darkTheme ? R.drawable.user_title_bg_influencer_dark : R.drawable.user_title_bg_influencer);
        }
        if (i10 != 3) {
            return this.userTitleColorHelper.getBackgroundDrawable(userTitle);
        }
        return ContextCompat.getDrawable(getContext(), this.darkTheme ? R.drawable.user_title_bg_verified_dark : R.drawable.user_title_bg_verified);
    }

    private int getStartDrawableId(UserTitle userTitle) {
        int i10 = userTitle.type;
        if (i10 == 2) {
            return R.drawable.ic_user_title_influencer;
        }
        if (i10 != 3) {
            return 0;
        }
        return this.darkTheme ? R.drawable.ic_verified_dark : R.drawable.ic_verified;
    }

    private int getTextColor(UserTitle userTitle) {
        int i10 = userTitle.type;
        if (i10 == 2) {
            return getContext().getResources().getColor(R.color.influencer_primary_color);
        }
        if (i10 != 3) {
            return PaletteUtils.isDarkColor(this.userTitleColorHelper.getTitleColor(userTitle)) ? -1 : -11908534;
        }
        return this.darkTheme ? -1 : -15066598;
    }

    public UserTitleFlowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.showMore = true;
        this.userTitleColorHelper = new UserTitleColorHelper(getContext());
    }

    public void setTitleList(List<UserTitle> list) {
        removeAllViews();
        if (list != null) {
            for (UserTitle userTitle : list) {
                View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.user_title_view, (ViewGroup) this, false);
                TextView textView = (TextView) viewInflate.findViewById(R.id.title);
                textView.setText(userTitle.title);
                int startDrawableId = getStartDrawableId(userTitle);
                if (startDrawableId != 0) {
                    Drawable drawable = ContextCompat.getDrawable(getContext(), startDrawableId);
                    textView.setCompoundDrawablePadding(Utils.dpToPxInt(getContext(), 4.0f));
                    if (Utils.isRtl()) {
                        textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
                    } else {
                        textView.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
                    }
                }
                textView.setBackgroundDrawable(getBackgroundOfUserTitle(userTitle));
                textView.setTextColor(getTextColor(userTitle));
                addView(viewInflate);
            }
            if (!list.isEmpty()) {
                addMoreView(LayoutInflater.from(getContext()).inflate(R.layout.user_title_more, (ViewGroup) this, false));
            }
        }
    }

    public void setUser(User user) {
        setUser(user, true);
    }
}
