package com.narvii.link.view;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.link.LoadFinishListener;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.modulization.ConfigApiRequestHelper;
import com.narvii.modulization.Module;
import com.narvii.util.JacksonUtils;
import com.narvii.util.ranking.RankingService;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;

/* loaded from: classes.dex */
public class UserSnippetView extends NVLinkSnippetView<User> {
    private NicknameView nicknameView;
    private UserAvatarLayout userAvatarLayout;

    public UserSnippetView(Context context) {
        super(context);
        FrameLayout.inflate(context, R.layout.item_snippet_user, this);
        this.userAvatarLayout = (UserAvatarLayout) findViewById(R.id.user_avatar_layout);
        this.nicknameView = (NicknameView) findViewById(R.id.nickname);
    }

    @Override // com.narvii.link.view.LoadTrackView, com.narvii.link.ILoadTrackView
    public boolean isAllLoaded() {
        UserAvatarLayout userAvatarLayout = this.userAvatarLayout;
        return userAvatarLayout != null && userAvatarLayout.isAllLoaded();
    }

    @Override // com.narvii.link.view.NVLinkSnippetView
    public void setObject(User user) {
        this.userAvatarLayout.setUser(user, this.nvContext);
        this.userAvatarLayout.setAvatarStroke(1.5f);
        this.userAvatarLayout.setUnsubcribeColor(-1315088);
        this.nicknameView.setHideInfluencerBadge(false);
        Community community = this.otherCommunity;
        if (community != null && !JacksonUtils.nodeBoolean(community.configuration, Module.CONFIG_MODULE_KEY, Module.MODULE_RANKING, ConfigApiRequestHelper.ENABLED)) {
            this.nicknameView.setHideRankingBadge(true);
        }
        NVContext nVContext = this.nvContext;
        if (nVContext != null) {
            this.nicknameView.setRankingService((RankingService) nVContext.getService(Module.MODULE_RANKING));
        }
        TextView nameView = this.nicknameView.getNameView();
        if (nameView != null) {
            nameView.setSingleLine(false);
            nameView.setMaxLines(1);
        }
        this.nicknameView.setUser(user);
        this.userAvatarLayout.setLoadFinishListener(new LoadFinishListener() { // from class: com.narvii.link.view.UserSnippetView.1
            @Override // com.narvii.link.LoadFinishListener
            public void onLoadFinished() {
                UserSnippetView.this.checkIfAllLoadFinished();
            }
        });
    }
}
