package com.narvii.checkin;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.support.v4.internal.view.SupportMenu;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.LayoutUtils;
import com.narvii.util.Utils;
import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes2.dex */
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
        void onGetColumn(int i);
    }

    public void setMe(boolean z) {
        this.isMe = z;
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

    public void setCheckins(long j, boolean[] zArr, long j2, boolean z) {
        long j3 = j;
        int i = 0;
        this.dayOfWeek.setVisibility(0);
        this.checkins = zArr;
        this.historyLayout.removeAllViews();
        this.monthView.removeAllViews();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j3);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j2);
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
        int i2 = 0;
        while (i2 < 7) {
            int i3 = 0;
            while (i3 < this.column) {
                int i4 = (i3 * 7) + i2;
                calendar.setTimeInMillis(j3);
                calendar.add(6, i4);
                if (calendar.get(5) == 1 && i4 < zArr.length) {
                    String str = this.dateFormatSymbols.getShortMonths()[calendar.get(2)];
                    TextView textView = new TextView(getContext());
                    textView.setTextSize(i, cellSize * 0.75f);
                    textView.setSingleLine(true);
                    textView.setMaxLines(1);
                    textView.setTextColor(-16728577);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                    int i5 = cellSize;
                    int i6 = paddingSize;
                    int i7 = ((i5 + (i6 * 2)) * i3) + i6;
                    if (Build.VERSION.SDK_INT >= 17) {
                        layoutParams.setMarginStart(i7);
                    } else {
                        layoutParams.leftMargin = i7;
                    }
                    textView.setLayoutParams(layoutParams);
                    textView.setText(str);
                    this.monthView.addView(textView);
                }
                FrameLayout frameLayout = new FrameLayout(getContext());
                GridLayout.LayoutParams layoutParams2 = new GridLayout.LayoutParams();
                int i8 = cellSize;
                layoutParams2.width = i8;
                layoutParams2.height = i8;
                int i9 = paddingSize;
                layoutParams2.setMargins(i9, i9, i9, i9);
                frameLayout.setLayoutParams(layoutParams2);
                int length = zArr.length - 1;
                if (this.isMe && i4 == length && length >= 0) {
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
                if (i4 < zArr.length && i4 >= 0) {
                    if (calendar.before(calendar2)) {
                        frameLayout.setBackgroundResource(R.drawable.check_in_not_join);
                    } else if (zArr[i4]) {
                        frameLayout.setBackgroundResource(R.drawable.check_in_yes);
                    } else if (i4 == zArr.length - 1) {
                        frameLayout.setBackgroundResource(R.drawable.check_in_no_today);
                    } else {
                        if (this.isMe && zIsPremiumFeatureEnabled && z) {
                            if (i4 > (zArr.length - 1) - 7) {
                                frameLayout.setBackgroundResource(R.drawable.check_in_no_can_fix);
                                frameLayout.setOnClickListener(onClickListener);
                                View view2 = new View(getContext());
                                view2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                view2.setBackgroundColor(SupportMenu.CATEGORY_MASK);
                                frameLayout.addView(view2);
                                view2.startAnimation(this.anim);
                                this.breathViews.add(view2);
                            }
                        }
                        frameLayout.setBackgroundResource(R.drawable.check_in_no);
                    }
                }
                this.historyLayout.addView(frameLayout);
                i3++;
                j3 = j;
                i = 0;
            }
            i2++;
            j3 = j;
            i = 0;
        }
    }

    public AfterGetColumnListener getAfterGetColumnListener() {
        return this.afterGetColumnListener;
    }

    public void setAfterGetColumnListener(AfterGetColumnListener afterGetColumnListener) {
        this.afterGetColumnListener = afterGetColumnListener;
    }

    public CheckInHistoryView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.breathViews = new ArrayList<>();
        setClipToPadding(false);
        setClipChildren(false);
        this.dateFormatSymbols = new DateFormatSymbols();
        FrameLayout.inflate(context, R.layout.checkin_history, this);
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

    private void setUpDayOfWeek() {
        this.dayOfWeek.setVisibility(4);
        String[] shortWeekdays = this.dateFormatSymbols.getShortWeekdays();
        int firstDayOfWeek = Calendar.getInstance().getFirstDayOfWeek();
        HashSet hashSet = new HashSet();
        hashSet.add(0);
        hashSet.add(3);
        hashSet.add(6);
        for (int i = 0; i < 7; i++) {
            int i2 = firstDayOfWeek + i;
            if (i2 > 7) {
                i2 %= 7;
            }
            TextView textView = new TextView(getContext());
            textView.setTextSize(0, cellSize * 0.75f);
            textView.setGravity(16);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, cellSize);
            if (i != 6) {
                layoutParams.bottomMargin = paddingSize * 2;
            } else {
                layoutParams.bottomMargin = paddingSize;
            }
            textView.setLayoutParams(layoutParams);
            if (hashSet.contains(Integer.valueOf(i))) {
                textView.setText(shortWeekdays[i2]);
            }
            this.dayOfWeek.addView(textView);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!this.columnGot) {
            int measuredWidth = getMeasuredWidth();
            int measuredWidth2 = this.dayOfWeek.getMeasuredWidth();
            int marginStart = LayoutUtils.getMarginStart((ViewGroup.MarginLayoutParams) this.historyLayout.getLayoutParams());
            int marginEnd = LayoutUtils.getMarginEnd((ViewGroup.MarginLayoutParams) this.historyLayout.getLayoutParams());
            this.column = ((((((measuredWidth - getPaddingLeft()) - getPaddingRight()) - marginStart) - marginEnd) - LayoutUtils.getMarginStart((ViewGroup.MarginLayoutParams) this.dayOfWeek.getLayoutParams())) - measuredWidth2) / (cellSize + (paddingSize * 2));
            this.columnGot = true;
            this.historyLayout.setColumnCount(this.column);
            this.historyLayout.setRowCount(7);
            if (this.afterGetColumnListener != null) {
                Utils.handler.post(new Runnable() { // from class: com.narvii.checkin.-$$Lambda$CheckInHistoryView$V7rriyeYGzXsOZhtYqjIZ8RmeOQ
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onMeasure$0$CheckInHistoryView();
                    }
                });
            }
        }
        this.historyLayout.measure(View.MeasureSpec.makeMeasureSpec(getTotalSize(this.column), 1073741824), View.MeasureSpec.makeMeasureSpec(getTotalSize(7), 1073741824));
    }

    public /* synthetic */ void lambda$onMeasure$0$CheckInHistoryView() {
        this.afterGetColumnListener.onGetColumn(this.column);
    }

    private int getTotalSize(int i) {
        return (cellSize + (paddingSize * 2)) * i;
    }
}
