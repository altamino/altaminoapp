package com.narvii.checkin;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.LayoutUtils;
import com.narvii.util.Utils;
import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes8.dex */
public class CheckInHistoryView extends FrameLayout {
    public static final int DAYS_OF_ONE_WEEK = 7;
    public static final int DEFAULT_CELL_SIZE = 16;
    public static final int DEFAULT_PADDING_SIZE = 1;
    public static int cellSize;
    public static int paddingSize;
    private AfterGetColumnListener afterGetColumnListener;
    private Animation anim;
    ArrayList<View> breathViews;
    boolean[] checkins;
    private int column;
    private boolean columnGot;
    private DateFormatSymbols dateFormatSymbols;
    LinearLayout dayOfWeek;
    GridLayout historyLayout;
    boolean isMe;
    FrameLayout monthView;

    public interface AfterGetColumnListener {
        void onGetColumn(int i10);
    }

    private int getTotalSize(int i10) {
        return (cellSize + (paddingSize * 2)) * i10;
    }

    public AfterGetColumnListener getAfterGetColumnListener() {
        return this.afterGetColumnListener;
    }

    public void setAfterGetColumnListener(AfterGetColumnListener afterGetColumnListener) {
        this.afterGetColumnListener = afterGetColumnListener;
    }

    public void setCheckins(long j6, boolean[] zArr, long j10, boolean z6) {
        int i10 = 0;
        this.dayOfWeek.setVisibility(0);
        this.checkins = zArr;
        this.historyLayout.removeAllViews();
        this.monthView.removeAllViews();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j6);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j10);
        calendar2.set(11, 0);
        calendar2.set(12, 0);
        calendar2.set(13, 0);
        calendar2.set(14, 0);
        this.breathViews.clear();
        this.anim = AnimationUtils.loadAnimation(getContext(), R.anim.check_in_history_anim);
        NVContext nVContext = Utils.getNVContext(getContext());
        boolean zIsPremiumFeatureEnabled = new CommunityConfigHelper(nVContext).isPremiumFeatureEnabled();
        final CheckInHelper checkInHelper = new CheckInHelper(nVContext);
        checkInHelper.source = "Achievements";
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.checkin.CheckInHistoryView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                checkInHelper.startStreakRepairDialog();
            }
        };
        int i11 = 0;
        while (i11 < 7) {
            int i12 = i10;
            while (i12 < this.column) {
                int i13 = (i12 * 7) + i11;
                calendar.setTimeInMillis(j6);
                calendar.add(6, i13);
                if (calendar.get(5) == 1 && i13 < zArr.length) {
                    String str = this.dateFormatSymbols.getShortMonths()[calendar.get(2)];
                    TextView textView = new TextView(getContext());
                    textView.setTextSize(i10, cellSize * 0.75f);
                    textView.setSingleLine(true);
                    textView.setMaxLines(1);
                    textView.setTextColor(-16728577);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                    int i14 = cellSize;
                    int i15 = paddingSize;
                    layoutParams.setMarginStart(((i14 + (i15 * 2)) * i12) + i15);
                    textView.setLayoutParams(layoutParams);
                    textView.setText(str);
                    this.monthView.addView(textView);
                }
                FrameLayout frameLayout = new FrameLayout(getContext());
                GridLayout.LayoutParams layoutParams2 = new GridLayout.LayoutParams();
                int i16 = cellSize;
                layoutParams2.width = i16;
                layoutParams2.height = i16;
                int i17 = paddingSize;
                layoutParams2.setMargins(i17, i17, i17, i17);
                frameLayout.setLayoutParams(layoutParams2);
                int length = zArr.length - 1;
                if (this.isMe && i13 == length && length >= 0) {
                    View view = new View(getContext());
                    view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    if (zArr[length]) {
                        view.setBackgroundColor(-570425345);
                        view.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.checkin.CheckInHistoryView.2
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                if (CheckInHistoryView.this.getContext() instanceof Activity) {
                                    CheckInResult checkInResult = new CheckInResult();
                                    checkInResult.earnedReputationPoint = -1;
                                    CheckInPopUpHelper checkInPopUpHelper = new CheckInPopUpHelper((Activity) CheckInHistoryView.this.getContext());
                                    checkInPopUpHelper.setCenterInScreen(true);
                                    checkInPopUpHelper.showCheckInPopUp(checkInResult, null);
                                }
                            }
                        });
                    } else {
                        view.setBackgroundResource(R.drawable.check_in_no_today_stroke);
                    }
                    frameLayout.addView(view);
                    view.startAnimation(this.anim);
                    this.breathViews.add(view);
                }
                if (i13 < zArr.length && i13 >= 0) {
                    if (calendar.before(calendar2)) {
                        frameLayout.setBackgroundResource(R.drawable.check_in_not_join);
                    } else if (zArr[i13]) {
                        frameLayout.setBackgroundResource(R.drawable.check_in_yes);
                    } else if (i13 == zArr.length - 1) {
                        frameLayout.setBackgroundResource(R.drawable.check_in_no_today);
                    } else if (this.isMe && zIsPremiumFeatureEnabled && z6 && i13 > zArr.length - 8) {
                        frameLayout.setBackgroundResource(R.drawable.check_in_no_can_fix);
                        frameLayout.setOnClickListener(onClickListener);
                        View view2 = new View(getContext());
                        view2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                        view2.setBackgroundColor(SupportMenu.CATEGORY_MASK);
                        frameLayout.addView(view2);
                        view2.startAnimation(this.anim);
                        this.breathViews.add(view2);
                    } else {
                        frameLayout.setBackgroundResource(R.drawable.check_in_no);
                    }
                }
                this.historyLayout.addView(frameLayout);
                i12++;
                i10 = 0;
            }
            i11++;
            i10 = 0;
        }
    }

    public void setMe(boolean z6) {
        this.isMe = z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onMeasure$0() {
        this.afterGetColumnListener.onGetColumn(this.column);
    }

    private void setUpDayOfWeek() {
        this.dayOfWeek.setVisibility(4);
        String[] shortWeekdays = this.dateFormatSymbols.getShortWeekdays();
        int firstDayOfWeek = Calendar.getInstance().getFirstDayOfWeek();
        HashSet hashSet = new HashSet();
        hashSet.add(0);
        hashSet.add(3);
        hashSet.add(6);
        for (int i10 = 0; i10 < 7; i10++) {
            int i11 = firstDayOfWeek + i10;
            if (i11 > 7) {
                i11 %= 7;
            }
            TextView textView = new TextView(getContext());
            textView.setTextSize(0, cellSize * 0.75f);
            textView.setGravity(16);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, cellSize);
            if (i10 != 6) {
                layoutParams.bottomMargin = paddingSize * 2;
            } else {
                layoutParams.bottomMargin = paddingSize;
            }
            textView.setLayoutParams(layoutParams);
            if (hashSet.contains(Integer.valueOf(i10))) {
                textView.setText(shortWeekdays[i11]);
            }
            this.dayOfWeek.addView(textView);
        }
    }

    public CheckInHistoryView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.breathViews = new ArrayList<>();
        setClipToPadding(false);
        setClipChildren(false);
        this.dateFormatSymbols = new DateFormatSymbols();
        View.inflate(context, R.layout.check_in_history_view, this);
        this.historyLayout = (GridLayout) findViewById(R.id.history);
        this.dayOfWeek = (LinearLayout) findViewById(R.id.dayofweek);
        this.monthView = (FrameLayout) findViewById(R.id.month);
        initViewSizes();
        setUpDayOfWeek();
    }

    private void initViewSizes() {
        cellSize = (int) Utils.dpToPx(getContext(), 16.0f);
        paddingSize = (int) Utils.dpToPx(getContext(), 1.0f);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.anim != null) {
            Iterator<View> it = this.breathViews.iterator();
            while (it.hasNext()) {
                it.next().startAnimation(this.anim);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (!this.columnGot) {
            int measuredWidth = getMeasuredWidth();
            int measuredWidth2 = this.dayOfWeek.getMeasuredWidth();
            int marginStart = LayoutUtils.getMarginStart((ViewGroup.MarginLayoutParams) this.historyLayout.getLayoutParams());
            int marginEnd = LayoutUtils.getMarginEnd((ViewGroup.MarginLayoutParams) this.historyLayout.getLayoutParams());
            int paddingLeft = ((((((measuredWidth - getPaddingLeft()) - getPaddingRight()) - marginStart) - marginEnd) - LayoutUtils.getMarginStart((ViewGroup.MarginLayoutParams) this.dayOfWeek.getLayoutParams())) - measuredWidth2) / (cellSize + (paddingSize * 2));
            this.column = paddingLeft;
            this.columnGot = true;
            this.historyLayout.setColumnCount(paddingLeft);
            this.historyLayout.setRowCount(7);
            if (this.afterGetColumnListener != null) {
                Utils.handler.post(new Runnable() { // from class: com.narvii.checkin.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f2198a.lambda$onMeasure$0();
                    }
                });
            }
        }
        this.historyLayout.measure(View.MeasureSpec.makeMeasureSpec(getTotalSize(this.column), 1073741824), View.MeasureSpec.makeMeasureSpec(getTotalSize(7), 1073741824));
    }
}
