package com.narvii.prompt;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.achievements.ReputationGainedHelper;
import com.narvii.amino.PromptShowListener;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.util.Utils;
import com.narvii.util.ranking.RankingService;
import com.narvii.widget.RankingTitleView;

/* loaded from: classes3.dex */
public class ReputationPromptHelper extends PromptHelper {
    public static final int REPUTATION_GAINED_SHOW_DURATION = 1300;
    public boolean isPopUpHold;
    public boolean isRankingTitleAnimEnd;
    public ReputationGainedHelper reputationGainedHelper;

    public ReputationPromptHelper(NVContext nVContext, PromptShowListener promptShowListener) {
        super(nVContext, promptShowListener);
    }

    @Override // com.narvii.prompt.PromptHelper
    protected void doTryShow() {
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this.nvContext);
        this.reputationGainedHelper = new ReputationGainedHelper(this.nvContext);
        if (getUser() != null && communityConfigHelper.isRankingModuleEnabled() && this.reputationGainedHelper.canShowNow()) {
            final int gainedRP = this.reputationGainedHelper.getGainedRP();
            if (gainedRP > 0) {
                dispatchShowPromptRunnable(new Runnable() { // from class: com.narvii.prompt.ReputationPromptHelper.1
                    @Override // java.lang.Runnable
                    public void run() throws Resources.NotFoundException {
                        ReputationPromptHelper.this.showReputationGainedView(gainedRP);
                    }
                });
                return;
            } else {
                whenNotBlocking();
                return;
            }
        }
        whenNotBlocking();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showReputationGainedView(int i) throws Resources.NotFoundException {
        if (!(this.nvContext.getContext() instanceof NVActivity)) {
            whenNotBlocking();
            return;
        }
        NVActivity nVActivity = (NVActivity) this.nvContext.getContext();
        final ViewGroup viewGroup = (ViewGroup) nVActivity.getWindow().getDecorView();
        if (viewGroup.findViewById(R.id.reputation_gained_layout) == null) {
            LayoutInflater.from(nVActivity).inflate(R.layout.reputation_gained, viewGroup, true);
        }
        final View viewFindViewById = viewGroup.findViewById(R.id.reputation_gained_layout);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(nVActivity, R.anim.fade_in);
        final Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(nVActivity, R.anim.fade_out);
        viewFindViewById.startAnimation(animationLoadAnimation);
        RankingTitleView rankingTitleView = (RankingTitleView) viewFindViewById.findViewById(R.id.ranking_title_view);
        AccountService accountService = (AccountService) this.nvContext.getService("account");
        final RankingService rankingService = (RankingService) this.nvContext.getService(Module.MODULE_RANKING);
        final TextView textView = (TextView) viewFindViewById.findViewById(R.id.title);
        final Runnable runnable = new Runnable() { // from class: com.narvii.prompt.ReputationPromptHelper.2
            @Override // java.lang.Runnable
            public void run() {
                viewFindViewById.startAnimation(animationLoadAnimation2);
                viewGroup.removeView(viewFindViewById);
                ReputationPromptHelper.this.whenNotBlocking();
            }
        };
        this.isRankingTitleAnimEnd = false;
        this.isPopUpHold = false;
        rankingTitleView.setUser(accountService.getUserProfile(), this.nvContext, this.reputationGainedHelper.getLastRP(), accountService.getUserProfile().reputation, new RankingTitleView.OnAnimListener() { // from class: com.narvii.prompt.ReputationPromptHelper.3
            @Override // com.narvii.widget.RankingTitleView.OnAnimListener
            public void onLevelChanged(int i2) {
                textView.setText(rankingService.getTitle(i2));
            }

            @Override // com.narvii.widget.RankingTitleView.OnAnimListener
            public void onAnimEnd() {
                ReputationPromptHelper reputationPromptHelper = ReputationPromptHelper.this;
                reputationPromptHelper.isRankingTitleAnimEnd = true;
                if (reputationPromptHelper.isPopUpHold) {
                    return;
                }
                Utils.postDelayed(runnable, 1300L);
            }
        });
        this.reputationGainedHelper.show();
        ((TextView) viewFindViewById.findViewById(R.id.rp)).setText("+" + i + " REP");
        ((TextView) viewFindViewById.findViewById(R.id.reputation_gained)).setText(i > 1 ? nVActivity.getString(R.string.reputation_gained, new Object[]{Integer.valueOf(i)}) : nVActivity.getString(R.string.reputation_gained_one));
        viewFindViewById.findViewById(R.id.main_layout).setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.prompt.ReputationPromptHelper.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    ReputationPromptHelper.this.isPopUpHold = true;
                    Utils.handler.removeCallbacks(runnable);
                } else if (action == 1 || action == 3) {
                    ReputationPromptHelper reputationPromptHelper = ReputationPromptHelper.this;
                    reputationPromptHelper.isPopUpHold = false;
                    if (reputationPromptHelper.isRankingTitleAnimEnd) {
                        Utils.postDelayed(runnable, 1300L);
                    }
                }
                return true;
            }
        });
    }
}
