package com.narvii.util.debug;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ProgressBar;
import android.widget.Switch;
import android.widget.TextView;
import androidx.lifecycle.ViewModelProvider;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.util.debug.model.ToggleOptionsRepository;
import com.narvii.util.debug.viewmodel.DebugToggleOptionsViewState;
import com.narvii.util.debug.viewmodel.ToggleOptionsViewModel;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class ToggleOptionsFragment extends NVFragment {
    private TextView attestationTokenLabel;
    private Switch attestationTokenSwitch;
    private TextView errorMessage;
    private ProgressBar progressIndicator;
    private ToggleOptionsViewModel viewModel;

    /* JADX INFO: renamed from: com.narvii.util.debug.ToggleOptionsFragment$observeViewState$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<DebugToggleOptionsViewState, l0> {
        AnonymousClass1() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(DebugToggleOptionsViewState debugToggleOptionsViewState) {
            invoke2(debugToggleOptionsViewState);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(DebugToggleOptionsViewState debugToggleOptionsViewState) {
            if (debugToggleOptionsViewState instanceof DebugToggleOptionsViewState.Loading) {
                ToggleOptionsFragment.this.showLoading();
                return;
            }
            if (!(debugToggleOptionsViewState instanceof DebugToggleOptionsViewState.Success)) {
                if (debugToggleOptionsViewState instanceof DebugToggleOptionsViewState.Error) {
                    ToggleOptionsFragment.this.hideLoading();
                    ToggleOptionsFragment.this.showErrorMessage(((DebugToggleOptionsViewState.Error) debugToggleOptionsViewState).getError().getMessage());
                    return;
                }
                return;
            }
            ToggleOptionsFragment.this.hideLoading();
            Switch r1 = ToggleOptionsFragment.this.attestationTokenSwitch;
            if (r1 == null) {
                t.B("attestationTokenSwitch");
                r1 = null;
            }
            r1.setChecked(((DebugToggleOptionsViewState.Success) debugToggleOptionsViewState).getFailAttestation().getShouldFail());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideLoading() {
        TextView textView = this.attestationTokenLabel;
        TextView textView2 = null;
        if (textView == null) {
            t.B("attestationTokenLabel");
            textView = null;
        }
        textView.setVisibility(0);
        Switch r1 = this.attestationTokenSwitch;
        if (r1 == null) {
            t.B("attestationTokenSwitch");
            r1 = null;
        }
        r1.setVisibility(0);
        ProgressBar progressBar = this.progressIndicator;
        if (progressBar == null) {
            t.B("progressIndicator");
            progressBar = null;
        }
        progressBar.setVisibility(8);
        TextView textView3 = this.errorMessage;
        if (textView3 == null) {
            t.B("errorMessage");
        } else {
            textView2 = textView3;
        }
        textView2.setVisibility(8);
    }

    private final void observeViewState() {
        ToggleOptionsViewModel toggleOptionsViewModel = this.viewModel;
        if (toggleOptionsViewModel == null) {
            t.B("viewModel");
            toggleOptionsViewModel = null;
        }
        toggleOptionsViewModel.getToggleViewState().i(getViewLifecycleOwner(), new ToggleOptionsFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass1()));
    }

    private final void setupToggleSwitch() {
        Switch r1 = this.attestationTokenSwitch;
        if (r1 == null) {
            t.B("attestationTokenSwitch");
            r1 = null;
        }
        r1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.util.debug.b
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
                ToggleOptionsFragment.setupToggleSwitch$lambda$0(this.f2821a, compoundButton, z6);
            }
        });
    }

    private final void setupViewModel() {
        ToggleOptionsViewModel.Companion companion = ToggleOptionsViewModel.Companion;
        Context contextRequireContext = requireContext();
        t.i(contextRequireContext, "requireContext(...)");
        this.viewModel = (ToggleOptionsViewModel) new ViewModelProvider(this, companion.factory(new ToggleOptionsRepository(contextRequireContext))).a(ToggleOptionsViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showErrorMessage(String str) {
        TextView textView = this.attestationTokenLabel;
        TextView textView2 = null;
        if (textView == null) {
            t.B("attestationTokenLabel");
            textView = null;
        }
        textView.setVisibility(8);
        Switch r1 = this.attestationTokenSwitch;
        if (r1 == null) {
            t.B("attestationTokenSwitch");
            r1 = null;
        }
        r1.setVisibility(8);
        ProgressBar progressBar = this.progressIndicator;
        if (progressBar == null) {
            t.B("progressIndicator");
            progressBar = null;
        }
        progressBar.setVisibility(8);
        TextView textView3 = this.errorMessage;
        if (textView3 == null) {
            t.B("errorMessage");
            textView3 = null;
        }
        textView3.setVisibility(0);
        TextView textView4 = this.errorMessage;
        if (textView4 == null) {
            t.B("errorMessage");
        } else {
            textView2 = textView4;
        }
        textView2.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showLoading() {
        TextView textView = this.attestationTokenLabel;
        TextView textView2 = null;
        if (textView == null) {
            t.B("attestationTokenLabel");
            textView = null;
        }
        textView.setVisibility(8);
        Switch r1 = this.attestationTokenSwitch;
        if (r1 == null) {
            t.B("attestationTokenSwitch");
            r1 = null;
        }
        r1.setVisibility(8);
        ProgressBar progressBar = this.progressIndicator;
        if (progressBar == null) {
            t.B("progressIndicator");
            progressBar = null;
        }
        progressBar.setVisibility(0);
        TextView textView3 = this.errorMessage;
        if (textView3 == null) {
            t.B("errorMessage");
        } else {
            textView2 = textView3;
        }
        textView2.setVisibility(8);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        View viewInflate = inflater.inflate(R.layout.toggle_options_fragment, viewGroup, false);
        t.g(viewInflate);
        findViews(viewInflate);
        setupToggleSwitch();
        observeViewState();
        return viewInflate;
    }

    private final void findViews(View view) {
        View viewFindViewById = view.findViewById(R.id.attestation_token_label);
        t.i(viewFindViewById, "findViewById(...)");
        this.attestationTokenLabel = (TextView) viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.attestation_token_switch);
        t.i(viewFindViewById2, "findViewById(...)");
        this.attestationTokenSwitch = (Switch) viewFindViewById2;
        View viewFindViewById3 = view.findViewById(R.id.progress_indicator);
        t.i(viewFindViewById3, "findViewById(...)");
        this.progressIndicator = (ProgressBar) viewFindViewById3;
        View viewFindViewById4 = view.findViewById(R.id.error_message);
        t.i(viewFindViewById4, "findViewById(...)");
        this.errorMessage = (TextView) viewFindViewById4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupToggleSwitch$lambda$0(ToggleOptionsFragment this$0, CompoundButton compoundButton, boolean z6) {
        t.j(this$0, "this$0");
        ToggleOptionsViewModel toggleOptionsViewModel = this$0.viewModel;
        if (toggleOptionsViewModel == null) {
            t.B("viewModel");
            toggleOptionsViewModel = null;
        }
        toggleOptionsViewModel.updateAttestationFailure(z6);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setupViewModel();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        ToggleOptionsViewModel toggleOptionsViewModel = this.viewModel;
        if (toggleOptionsViewModel == null) {
            t.B("viewModel");
            toggleOptionsViewModel = null;
        }
        toggleOptionsViewModel.fetchToggleOptions();
    }
}
