package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes11.dex */
public final class DetailItemContributorsItemBinding implements ViewBinding {

    @NonNull
    public final LinearLayout contributor1;

    @NonNull
    public final LinearLayout contributor2;

    @NonNull
    public final LinearLayout contributor3;

    @NonNull
    public final LinearLayout contributor4;

    @NonNull
    public final LinearLayout contributor5;

    @NonNull
    public final LinearLayout contributor6;

    @NonNull
    public final LinearLayout contributorOriginal;

    @NonNull
    public final NicknameView nicknameContributor1;

    @NonNull
    public final NicknameView nicknameContributor2;

    @NonNull
    public final NicknameView nicknameContributor3;

    @NonNull
    public final NicknameView nicknameContributor4;

    @NonNull
    public final NicknameView nicknameContributor5;

    @NonNull
    public final NicknameView nicknameContributor6;

    @NonNull
    public final NicknameView nicknameContributorOriginal;

    @NonNull
    public final SpinningView progress;

    @NonNull
    public final TextView retry;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final TextView seeAllContributors;

    @NonNull
    public final View stub1;

    private DetailItemContributorsItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull NicknameView nicknameView, @NonNull NicknameView nicknameView2, @NonNull NicknameView nicknameView3, @NonNull NicknameView nicknameView4, @NonNull NicknameView nicknameView5, @NonNull NicknameView nicknameView6, @NonNull NicknameView nicknameView7, @NonNull SpinningView spinningView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view) {
        this.rootView = relativeLayout;
        this.contributor1 = linearLayout;
        this.contributor2 = linearLayout2;
        this.contributor3 = linearLayout3;
        this.contributor4 = linearLayout4;
        this.contributor5 = linearLayout5;
        this.contributor6 = linearLayout6;
        this.contributorOriginal = linearLayout7;
        this.nicknameContributor1 = nicknameView;
        this.nicknameContributor2 = nicknameView2;
        this.nicknameContributor3 = nicknameView3;
        this.nicknameContributor4 = nicknameView4;
        this.nicknameContributor5 = nicknameView5;
        this.nicknameContributor6 = nicknameView6;
        this.nicknameContributorOriginal = nicknameView7;
        this.progress = spinningView;
        this.retry = textView;
        this.seeAllContributors = textView2;
        this.stub1 = view;
    }

    @NonNull
    public static DetailItemContributorsItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailItemContributorsItemBinding bind(@NonNull View view) {
        int i10 = R.id.contributor1;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.contributor1);
        if (linearLayout != null) {
            i10 = R.id.contributor2;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.contributor2);
            if (linearLayout2 != null) {
                i10 = R.id.contributor3;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.contributor3);
                if (linearLayout3 != null) {
                    i10 = R.id.contributor4;
                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.contributor4);
                    if (linearLayout4 != null) {
                        i10 = R.id.contributor5;
                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.a(view, R.id.contributor5);
                        if (linearLayout5 != null) {
                            i10 = R.id.contributor6;
                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.a(view, R.id.contributor6);
                            if (linearLayout6 != null) {
                                i10 = R.id.contributor_original;
                                LinearLayout linearLayout7 = (LinearLayout) ViewBindings.a(view, R.id.contributor_original);
                                if (linearLayout7 != null) {
                                    i10 = R.id.nickname_contributor1;
                                    NicknameView nicknameView = (NicknameView) ViewBindings.a(view, R.id.nickname_contributor1);
                                    if (nicknameView != null) {
                                        i10 = R.id.nickname_contributor2;
                                        NicknameView nicknameView2 = (NicknameView) ViewBindings.a(view, R.id.nickname_contributor2);
                                        if (nicknameView2 != null) {
                                            i10 = R.id.nickname_contributor3;
                                            NicknameView nicknameView3 = (NicknameView) ViewBindings.a(view, R.id.nickname_contributor3);
                                            if (nicknameView3 != null) {
                                                i10 = R.id.nickname_contributor4;
                                                NicknameView nicknameView4 = (NicknameView) ViewBindings.a(view, R.id.nickname_contributor4);
                                                if (nicknameView4 != null) {
                                                    i10 = R.id.nickname_contributor5;
                                                    NicknameView nicknameView5 = (NicknameView) ViewBindings.a(view, R.id.nickname_contributor5);
                                                    if (nicknameView5 != null) {
                                                        i10 = R.id.nickname_contributor6;
                                                        NicknameView nicknameView6 = (NicknameView) ViewBindings.a(view, R.id.nickname_contributor6);
                                                        if (nicknameView6 != null) {
                                                            i10 = R.id.nickname_contributor_original;
                                                            NicknameView nicknameView7 = (NicknameView) ViewBindings.a(view, R.id.nickname_contributor_original);
                                                            if (nicknameView7 != null) {
                                                                i10 = R.id.progress;
                                                                SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.progress);
                                                                if (spinningView != null) {
                                                                    i10 = R.id.retry;
                                                                    TextView textView = (TextView) ViewBindings.a(view, R.id.retry);
                                                                    if (textView != null) {
                                                                        i10 = R.id.see_all_contributors;
                                                                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.see_all_contributors);
                                                                        if (textView2 != null) {
                                                                            i10 = R.id.stub1;
                                                                            View viewA = ViewBindings.a(view, R.id.stub1);
                                                                            if (viewA != null) {
                                                                                return new DetailItemContributorsItemBinding((RelativeLayout) view, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, nicknameView, nicknameView2, nicknameView3, nicknameView4, nicknameView5, nicknameView6, nicknameView7, spinningView, textView, textView2, viewA);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DetailItemContributorsItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_item_contributors_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
