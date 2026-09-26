package com.narvii.util.ranking;

import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import androidx.core.content.ContextCompat;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.util.JacksonUtils;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class RankingService {
    private static RankingLevel[] EMPTY = new RankingLevel[0];
    private NVContext context;
    private RankingLevel[] levels;
    private final SparseArray<RankingLevel> map = new SparseArray<>(20);

    private int getBadgeLargeId(int i10) {
        switch (i10) {
            case 1:
                return R.drawable.ranking_badge_large_lvl1;
            case 2:
                return R.drawable.ranking_badge_large_lvl2;
            case 3:
                return R.drawable.ranking_badge_large_lvl3;
            case 4:
                return R.drawable.ranking_badge_large_lvl4;
            case 5:
                return R.drawable.ranking_badge_large_lvl5;
            case 6:
                return R.drawable.ranking_badge_large_lvl6;
            case 7:
                return R.drawable.ranking_badge_large_lvl7;
            case 8:
                return R.drawable.ranking_badge_large_lvl8;
            case 9:
                return R.drawable.ranking_badge_large_lvl9;
            case 10:
                return R.drawable.ranking_badge_large_lvl10;
            case 11:
                return R.drawable.ranking_badge_large_lvl11;
            case 12:
                return R.drawable.ranking_badge_large_lvl12;
            case 13:
                return R.drawable.ranking_badge_large_lvl13;
            case 14:
                return R.drawable.ranking_badge_large_lvl14;
            case 15:
                return R.drawable.ranking_badge_large_lvl15;
            case 16:
                return R.drawable.ranking_badge_large_lvl16;
            case 17:
                return R.drawable.ranking_badge_large_lvl17;
            case 18:
                return R.drawable.ranking_badge_large_lvl18;
            case 19:
                return R.drawable.ranking_badge_large_lvl19;
            case 20:
                return R.drawable.ranking_badge_large_lvl20;
            default:
                return 0;
        }
    }

    private int getBadgeSmallId(int i10) {
        switch (i10) {
            case 1:
                return R.drawable.ranking_badge_small_lvl1;
            case 2:
                return R.drawable.ranking_badge_small_lvl2;
            case 3:
                return R.drawable.ranking_badge_small_lvl3;
            case 4:
                return R.drawable.ranking_badge_small_lvl4;
            case 5:
                return R.drawable.ranking_badge_small_lvl5;
            case 6:
                return R.drawable.ranking_badge_small_lvl6;
            case 7:
                return R.drawable.ranking_badge_small_lvl7;
            case 8:
                return R.drawable.ranking_badge_small_lvl8;
            case 9:
                return R.drawable.ranking_badge_small_lvl9;
            case 10:
                return R.drawable.ranking_badge_small_lvl10;
            case 11:
                return R.drawable.ranking_badge_small_lvl11;
            case 12:
                return R.drawable.ranking_badge_small_lvl12;
            case 13:
                return R.drawable.ranking_badge_small_lvl13;
            case 14:
                return R.drawable.ranking_badge_small_lvl14;
            case 15:
                return R.drawable.ranking_badge_small_lvl15;
            case 16:
                return R.drawable.ranking_badge_small_lvl16;
            case 17:
                return R.drawable.ranking_badge_small_lvl17;
            case 18:
                return R.drawable.ranking_badge_small_lvl18;
            case 19:
                return R.drawable.ranking_badge_small_lvl19;
            case 20:
                return R.drawable.ranking_badge_small_lvl20;
            default:
                return 0;
        }
    }

    public Drawable getBadge(int i10) {
        return getBadge(i10, false);
    }

    public Drawable getBadgeSmall(int i10, boolean z6) {
        int badgeSmallId;
        if (!z6) {
            CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this.context);
            if (communityConfigHelper.getModuleNode() != null && !communityConfigHelper.isRankingModuleEnabled()) {
                return null;
            }
        }
        if (i10 <= 0 || (badgeSmallId = getBadgeSmallId(i10)) == 0) {
            return null;
        }
        return this.context.getContext().getResources().getDrawable(badgeSmallId);
    }

    public Drawable getInfluencerOrRankingBadge(User user, boolean z6) {
        if (user == null) {
            return null;
        }
        if (user.isInfluencer()) {
            return ContextCompat.getDrawable(this.context.getContext(), R.drawable.ic_badge_influencer);
        }
        return z6 ? getBadge(user.level) : getBadgeSmall(user.level);
    }

    public void reset() {
        this.levels = null;
        this.map.clear();
    }

    private void prepare() {
        JsonNode moduleNode = new CommunityConfigHelper(this.context).getModuleNode(Module.MODULE_RANKING, "rankingTable");
        this.levels = EMPTY;
        if (moduleNode != null && moduleNode.isArray()) {
            try {
                RankingLevel[] rankingLevelArr = (RankingLevel[]) JacksonUtils.DEFAULT_MAPPER.treeToValue(moduleNode, RankingLevel[].class);
                this.levels = rankingLevelArr;
                if (rankingLevelArr == null) {
                    this.levels = EMPTY;
                }
            } catch (Exception unused) {
            }
        }
        this.map.clear();
        for (RankingLevel rankingLevel : this.levels) {
            this.map.put(rankingLevel.level, rankingLevel);
        }
    }

    public Drawable getBadge(int i10, boolean z6) {
        int badgeLargeId;
        if ((z6 || new CommunityConfigHelper(this.context).isRankingModuleEnabled()) && i10 > 0 && (badgeLargeId = getBadgeLargeId(i10)) != 0) {
            return this.context.getContext().getResources().getDrawable(badgeLargeId);
        }
        return null;
    }

    public List<RankingLevel> getLevels() {
        RankingLevel[] rankingLevelArr = this.levels;
        if (rankingLevelArr == null || rankingLevelArr == EMPTY) {
            prepare();
        }
        return Arrays.asList(this.levels);
    }

    public int getReputation(int i10) {
        RankingLevel[] rankingLevelArr = this.levels;
        if (rankingLevelArr == null || rankingLevelArr == EMPTY) {
            prepare();
        }
        RankingLevel rankingLevel = this.map.get(i10);
        if (rankingLevel == null) {
            return 0;
        }
        return rankingLevel.reputation;
    }

    public CharSequence getTitle(int i10) {
        RankingLevel[] rankingLevelArr = this.levels;
        if (rankingLevelArr == null || rankingLevelArr == EMPTY) {
            prepare();
        }
        RankingLevel rankingLevel = this.map.get(i10);
        return rankingLevel == null ? "" : rankingLevel.title;
    }

    public RankingService(NVContext nVContext) {
        this.context = nVContext;
    }

    public Drawable getBadgeSmall(int i10) {
        return getBadgeSmall(i10, false);
    }

    public Drawable getInfluencerOrRankingBadge(User user) {
        return getInfluencerOrRankingBadge(user, false);
    }
}
