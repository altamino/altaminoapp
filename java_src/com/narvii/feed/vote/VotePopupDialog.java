package com.narvii.feed.vote;

import android.content.Context;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.Blog;
import com.narvii.model.Item;
import com.narvii.model.NVObject;
import com.narvii.model.SharedFile;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.widget.VoteIcon;

/* loaded from: classes2.dex */
public class VotePopupDialog extends MembersPopupDialog {
    private View.OnClickListener clickListener;
    NVObject feed;
    Callback<Integer> listener;
    private final NVContext nvContext;
    VoteIcon voteFrown;
    VoteIcon voteHeart;
    VoteIcon voteSmile;
    VoteIcon voteSurprise;
    VoteIcon voteUndecided;

    public VotePopupDialog(Context context) {
        super(context);
        this.clickListener = new View.OnClickListener() { // from class: com.narvii.feed.vote.VotePopupDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i;
                int votedValue;
                VotePopupDialog votePopupDialog = VotePopupDialog.this;
                if (votePopupDialog.listener == null) {
                    votePopupDialog.dismiss();
                    return;
                }
                switch (view.getId()) {
                    case R.id.feed_vote_frown /* 2131297371 */:
                        i = -1;
                        break;
                    case R.id.feed_vote_heart /* 2131297372 */:
                        i = 4;
                        break;
                    case R.id.feed_vote_smile /* 2131297373 */:
                        i = 1;
                        break;
                    case R.id.feed_vote_surprise /* 2131297374 */:
                        i = 2;
                        break;
                    case R.id.feed_vote_undecided /* 2131297375 */:
                        i = 3;
                        break;
                    default:
                        return;
                }
                VotePopupDialog votePopupDialog2 = VotePopupDialog.this;
                NVObject nVObject = votePopupDialog2.feed;
                if (nVObject instanceof Blog) {
                    votedValue = ((Blog) nVObject).getVotedValue(Utils.isGlobalInteractionScope(votePopupDialog2.nvContext));
                } else if (nVObject instanceof Item) {
                    votedValue = ((Item) nVObject).getVotedValue(Utils.isGlobalInteractionScope(votePopupDialog2.nvContext));
                } else if (!(nVObject instanceof SharedFile)) {
                    return;
                } else {
                    votedValue = ((SharedFile) nVObject).votedValue;
                }
                if (i == votedValue) {
                    VotePopupDialog.this.listener.call(0);
                } else {
                    VotePopupDialog.this.listener.call(Integer.valueOf(i));
                }
                VotePopupDialog.this.dismiss();
            }
        };
        setContentView(R.layout.feed_vote_view);
        this.voteHeart = (VoteIcon) findViewById(R.id.feed_vote_heart);
        this.voteHeart.setVotedValue(4);
        this.voteHeart.setOnClickListener(this.clickListener);
        this.voteSmile = (VoteIcon) findViewById(R.id.feed_vote_smile);
        this.voteSmile.setVotedValue(1);
        this.voteSmile.setOnClickListener(this.clickListener);
        this.voteFrown = (VoteIcon) findViewById(R.id.feed_vote_frown);
        this.voteFrown.setVotedValue(-1);
        this.voteFrown.setOnClickListener(this.clickListener);
        this.voteSurprise = (VoteIcon) findViewById(R.id.feed_vote_surprise);
        this.voteSurprise.setVotedValue(2);
        this.voteSurprise.setOnClickListener(this.clickListener);
        this.voteUndecided = (VoteIcon) findViewById(R.id.feed_vote_undecided);
        this.voteUndecided.setVotedValue(3);
        this.voteUndecided.setOnClickListener(this.clickListener);
        this.nvContext = Utils.getNVContext(context);
    }

    @Override // com.narvii.feed.vote.MembersPopupDialog
    public void setFeed(NVObject nVObject) {
        int votedValue;
        super.setFeed(nVObject);
        this.feed = nVObject;
        if (nVObject instanceof Blog) {
            votedValue = ((Blog) nVObject).getVotedValue(Utils.isGlobalInteractionScope(this.nvContext));
        } else if (nVObject instanceof Item) {
            votedValue = ((Item) nVObject).getVotedValue(Utils.isGlobalInteractionScope(this.nvContext));
        } else if (!(nVObject instanceof SharedFile)) {
            return;
        } else {
            votedValue = ((SharedFile) nVObject).votedValue;
        }
        boolean z = false;
        this.voteHeart.setTransparent((votedValue == 0 || votedValue == 4) ? false : true);
        this.voteSmile.setTransparent((votedValue == 0 || votedValue == 1) ? false : true);
        this.voteFrown.setTransparent((votedValue == 0 || votedValue == -1) ? false : true);
        this.voteSurprise.setTransparent((votedValue == 0 || votedValue == 2) ? false : true);
        VoteIcon voteIcon = this.voteUndecided;
        if (votedValue != 0 && votedValue != 3) {
            z = true;
        }
        voteIcon.setTransparent(z);
    }

    public void setVoteListener(Callback<Integer> callback) {
        this.listener = callback;
    }
}
