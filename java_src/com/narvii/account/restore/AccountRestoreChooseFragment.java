package com.narvii.account.restore;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.github.mmin18.widget.RealtimeBlurLayout;
import com.narvii.account.AccountUtils;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVFragment;
import com.narvii.util.PaletteUtils;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.widget.NVImageView;

/* loaded from: classes2.dex */
public class AccountRestoreChooseFragment extends NVFragment implements View.OnClickListener {
    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getActivity().getActionBar().hide();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_account_restore_third_part_choose, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.bg);
        RealtimeBlurLayout realtimeBlurLayout = (RealtimeBlurLayout) view.findViewById(R.id.nv_realtime_blur);
        if (NVApplication.CLIENT_TYPE == 101) {
            realtimeBlurLayout.setVisibility(0);
            Rect rect = new Rect();
            if (isAdded()) {
                getActivity().getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            }
            Bitmap local = ((NVImageLoader) getService("imageLoader")).getLocal("assets://icon-community.jpg", rect.width() / 2, rect.height() / 2, true);
            if (nVImageView != null) {
                nVImageView.setImageDrawable(local == null ? null : new BitmapDrawable(local));
            }
            if (local != null && PaletteUtils.isLightTone(local)) {
                realtimeBlurLayout.setOverlayColor(570425344);
            }
        } else if (nVImageView != null) {
            nVImageView.setBackgroundResource(R.drawable.master_login_signup_bg);
        }
        view.findViewById(R.id.email).setOnClickListener(this);
        view.findViewById(R.id.phone).setOnClickListener(this);
        AccountUtils accountUtils = new AccountUtils(getContext());
        ((Button) view.findViewById(R.id.email)).setTextColor(accountUtils.getAccountForegroundColor());
        ((Button) view.findViewById(R.id.phone)).setTextColor(accountUtils.getAccountForegroundColor());
        View viewFindViewById = view.findViewById(R.id.actionbar_back);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.restore.AccountRestoreChooseFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AccountRestoreChooseFragment.this.getActivity().finish();
                }
            });
        }
        StatusBarUtils.addMarginTopToContentChild(view.findViewById(R.id.title_bar), getStatusBarOverlaySize());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.email) {
            restoreAccount(1);
        } else {
            if (id != R.id.phone) {
                return;
            }
            restoreAccount(2);
        }
    }

    private void restoreAccount(int i) {
        Intent intent;
        if (i == 1) {
            intent = FragmentWrapperActivity.intent(AccountRestoreEmailFragment.class);
            intent.putExtra(AccountRestoreBaseFragment.KEY_RESTORE_ACCOUNT, i);
        } else if (i == 2) {
            intent = FragmentWrapperActivity.intent(AccoutRestorePhoneFragment.class);
            intent.putExtra(AccountRestoreBaseFragment.KEY_RESTORE_ACCOUNT, i);
        } else {
            intent = null;
        }
        if (intent != null) {
            startActivity(intent);
        }
        if (getActivity() != null) {
            getActivity().finish();
        }
    }
}
