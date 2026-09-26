package com.narvii.leaderboard;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.util.statistics.TmpValue;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes4.dex */
public class LeaderBoardHelper {
    private static final TmpValue<Drawable> DYNAMICTHEMEBG = new TmpValue<>();
    private NVContext ctx;

    public Drawable getDynamicThemeBg() {
        Drawable andRemove = DYNAMICTHEMEBG.getAndRemove();
        return andRemove == null ? this.ctx.getContext().getResources().getDrawable(R.drawable.leader_board_check_in) : andRemove;
    }

    public void saveDynamicThemeBg(Activity activity) {
        if (activity == null) {
            return;
        }
        View viewFindViewById = activity.findViewById(R.id.leader_board_background);
        if (viewFindViewById instanceof NVImageView) {
            DYNAMICTHEMEBG.set(((NVImageView) viewFindViewById).getDrawable());
        }
    }

    public LeaderBoardHelper(NVContext nVContext) {
        this.ctx = nVContext;
    }
}
