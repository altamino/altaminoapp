package com.narvii.feed.vote;

import android.content.Context;
import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.Blog;
import com.narvii.model.Item;
import com.narvii.model.NVObject;
import com.narvii.model.SharedFile;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.widget.VoteIcon;

/* JADX INFO: loaded from: classes6.dex */
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

    public void setVoteListener(Callback<Integer> callback) {
        this.listener = callback;
    }

    public VotePopupDialog(Context context) {
        super(context);
        this.clickListener = new View.OnClickListener() { // from class: com.narvii.feed.vote.VotePopupDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i10;
                int votedValue;
                VotePopupDialog votePopupDialog = VotePopupDialog.this;
                if (votePopupDialog.listener == null) {
                    votePopupDialog.dismiss();
                    return;
                }
                switch (view.getId()) {
                    case R.id.feed_vote_frown /* 2131363218 */:
                        i10 = -1;
                        break;
                    case R.id.feed_vote_heart /* 2131363219 */:
                        i10 = 4;
                        break;
                    case R.id.feed_vote_smile /* 2131363220 */:
                        i10 = 1;
                        break;
                    case R.id.feed_vote_surprise /* 2131363221 */:
                        i10 = 2;
                        break;
                    case R.id.feed_vote_undecided /* 2131363222 */:
                        i10 = 3;
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
                if (i10 == votedValue) {
                    VotePopupDialog.this.listener.call(0);
                } else {
                    VotePopupDialog.this.listener.call(Integer.valueOf(i10));
                }
                VotePopupDialog.this.dismiss();
            }
        };
        setContentView(R.layout.feed_vote_view);
        VoteIcon voteIcon = (VoteIcon) findViewById(R.id.feed_vote_heart);
        this.voteHeart = voteIcon;
        voteIcon.setVotedValue(4);
        this.voteHeart.setOnClickListener(this.clickListener);
        VoteIcon voteIcon2 = (VoteIcon) findViewById(R.id.feed_vote_smile);
        this.voteSmile = voteIcon2;
        voteIcon2.setVotedValue(1);
        this.voteSmile.setOnClickListener(this.clickListener);
        VoteIcon voteIcon3 = (VoteIcon) findViewById(R.id.feed_vote_frown);
        this.voteFrown = voteIcon3;
        voteIcon3.setVotedValue(-1);
        this.voteFrown.setOnClickListener(this.clickListener);
        VoteIcon voteIcon4 = (VoteIcon) findViewById(R.id.feed_vote_surprise);
        this.voteSurprise = voteIcon4;
        voteIcon4.setVotedValue(2);
        this.voteSurprise.setOnClickListener(this.clickListener);
        VoteIcon voteIcon5 = (VoteIcon) findViewById(R.id.feed_vote_undecided);
        this.voteUndecided = voteIcon5;
        voteIcon5.setVotedValue(3);
        this.voteUndecided.setOnClickListener(this.clickListener);
        this.nvContext = Utils.getNVContext(context);
    }

    @Override // com.narvii.feed.vote.MembersPopupDialog
    public void setFeed(NVObject nVObject) {
        int votedValue;
        boolean z6;
        boolean z10;
        boolean z11;
        boolean z12;
        super.setFeed(nVObject);
        this.feed = nVObject;
        if (nVObject instanceof Blog) {
            votedValue = ((Blog) nVObject).getVotedValue(Utils.isGlobalInteractionScope(this.nvContext));
        } else if (nVObject instanceof Item) {
            votedValue = ((Item) nVObject).getVotedValue(Utils.isGlobalInteractionScope(this.nvContext));
        } else if (nVObject instanceof SharedFile) {
            votedValue = ((SharedFile) nVObject).votedValue;
        } else {
            return;
        }
        VoteIcon voteIcon = this.voteHeart;
        boolean z13 = false;
        if (votedValue != 0 && votedValue != 4) {
            z6 = true;
        } else {
            z6 = false;
        }
        voteIcon.setTransparent(z6);
        VoteIcon voteIcon2 = this.voteSmile;
        if (votedValue != 0 && votedValue != 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        voteIcon2.setTransparent(z10);
        VoteIcon voteIcon3 = this.voteFrown;
        if (votedValue != 0 && votedValue != -1) {
            z11 = true;
        } else {
            z11 = false;
        }
        voteIcon3.setTransparent(z11);
        VoteIcon voteIcon4 = this.voteSurprise;
        if (votedValue != 0 && votedValue != 2) {
            z12 = true;
        } else {
            z12 = false;
        }
        voteIcon4.setTransparent(z12);
        VoteIcon voteIcon5 = this.voteUndecided;
        if (votedValue != 0 && votedValue != 3) {
            z13 = true;
        }
        voteIcon5.setTransparent(z13);
    }
}
