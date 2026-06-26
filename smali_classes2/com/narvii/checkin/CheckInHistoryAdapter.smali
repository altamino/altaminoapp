.class public Lcom/narvii/checkin/CheckInHistoryAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "CheckInHistoryAdapter.java"


# static fields
.field public static _checkins:[Z

.field public static _joinTime:J

.field public static _startTime:J


# instance fields
.field private checkInHistoryResponse:Lcom/narvii/checkin/CheckInHistoryResponse;

.field private dataGot:Z

.field private days:I

.field error:Ljava/lang/String;

.field history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private historyView:Lcom/narvii/checkin/CheckInHistoryView;

.field isMe:Z

.field private mColumn:I

.field private strikeLost:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 45
    iput-boolean p2, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->isMe:Z

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/checkin/CheckInHistoryAdapter;Lcom/narvii/checkin/CheckInHistoryResponse;)Lcom/narvii/checkin/CheckInHistoryResponse;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->checkInHistoryResponse:Lcom/narvii/checkin/CheckInHistoryResponse;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/checkin/CheckInHistoryAdapter;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->days:I

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/checkin/CheckInHistoryAdapter;)Lcom/narvii/checkin/CheckInHistoryView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->historyView:Lcom/narvii/checkin/CheckInHistoryView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/checkin/CheckInHistoryAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->strikeLost:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/checkin/CheckInHistoryAdapter;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->dataGot:Z

    return p1
.end method

.method static synthetic access$502(Lcom/narvii/checkin/CheckInHistoryAdapter;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->mColumn:I

    return p1
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInHistoryAdapter;->isDataGot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p1, 0x7f0b00db

    .line 148
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09021b

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/checkin/CheckInHistoryView;

    .line 151
    iput-object p2, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->historyView:Lcom/narvii/checkin/CheckInHistoryView;

    .line 152
    iget-object p3, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->historyView:Lcom/narvii/checkin/CheckInHistoryView;

    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->isMe:Z

    invoke-virtual {p3, v0}, Lcom/narvii/checkin/CheckInHistoryView;->setMe(Z)V

    const p3, 0x7f090afb

    .line 153
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->strikeLost:Landroid/widget/TextView;

    .line 154
    iget-object p3, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->strikeLost:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {p2}, Lcom/narvii/checkin/CheckInHistoryView;->getAfterGetColumnListener()Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;

    move-result-object p3

    if-nez p3, :cond_0

    .line 156
    new-instance p3, Lcom/narvii/checkin/CheckInHistoryAdapter$2;

    invoke-direct {p3, p0}, Lcom/narvii/checkin/CheckInHistoryAdapter$2;-><init>(Lcom/narvii/checkin/CheckInHistoryAdapter;)V

    invoke-virtual {p2, p3}, Lcom/narvii/checkin/CheckInHistoryView;->setAfterGetColumnListener(Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;)V

    :cond_0
    return-object p1
.end method

.method public isDataGot()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->dataGot:Z

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isListShown()Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInHistoryAdapter;->isDataGot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_0

    .line 137
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090afb

    if-ne v0, v1, :cond_0

    .line 138
    new-instance p1, Lcom/narvii/checkin/CheckInHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p2, "Achievements"

    .line 139
    iput-object p2, p1, Lcom/narvii/checkin/CheckInHelper;->source:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInHelper;->startStreakRepairDialog()V

    const/4 p1, 0x1

    return p1

    .line 143
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->error:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInHistoryAdapter;->sendRequest()V

    .line 62
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 63
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method

.method public sendRequest()V
    .locals 5

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x7

    .line 75
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 76
    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    sub-int/2addr v2, v4

    .line 77
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 78
    iget v4, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->mColumn:I

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x7

    add-int/2addr v2, v4

    iput v2, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->days:I

    const-string v2, "api"

    .line 80
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 81
    new-instance v3, Lcom/narvii/checkin/CheckInHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 83
    iget v4, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->days:I

    invoke-virtual {v3, v4, v0, v1}, Lcom/narvii/checkin/CheckInHelper;->getHistoryRequest(IJ)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v1, Lcom/narvii/checkin/CheckInHistoryAdapter$1;

    const-class v4, Lcom/narvii/checkin/CheckInHistoryResponse;

    invoke-direct {v1, p0, v4, v3}, Lcom/narvii/checkin/CheckInHistoryAdapter$1;-><init>(Lcom/narvii/checkin/CheckInHistoryAdapter;Ljava/lang/Class;Lcom/narvii/checkin/CheckInHelper;)V

    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
