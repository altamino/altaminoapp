.class public Lcom/narvii/checkin/CheckInHistoryAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->isMe:Z

    .line 6
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/checkin/CheckInHistoryAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->days:I

    return p0
.end method

.method static bridge synthetic g(Lcom/narvii/checkin/CheckInHistoryAdapter;)Lcom/narvii/checkin/CheckInHistoryView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->historyView:Lcom/narvii/checkin/CheckInHistoryView;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/narvii/checkin/CheckInHistoryAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->strikeLost:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/checkin/CheckInHistoryAdapter;Lcom/narvii/checkin/CheckInHistoryResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->checkInHistoryResponse:Lcom/narvii/checkin/CheckInHistoryResponse;

    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/checkin/CheckInHistoryAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->dataGot:Z

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/checkin/CheckInHistoryAdapter;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->mColumn:I

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInHistoryAdapter;->isDataGot()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->error:Ljava/lang/String;

    .line 11
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

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d00f1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a02d3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Lcom/narvii/checkin/CheckInHistoryView;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->historyView:Lcom/narvii/checkin/CheckInHistoryView;

    .line 19
    .line 20
    iget-boolean p3, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->isMe:Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p3}, Lcom/narvii/checkin/CheckInHistoryView;->setMe(Z)V

    .line 24
    .line 25
    .line 26
    const p3, 0x7f0a0ddd

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    check-cast p3, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->strikeLost:Landroid/widget/TextView;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/narvii/checkin/CheckInHistoryView;->getAfterGetColumnListener()Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;

    .line 43
    move-result-object p3

    .line 44
    .line 45
    if-nez p3, :cond_0

    .line 46
    .line 47
    new-instance p3, Lcom/narvii/checkin/CheckInHistoryAdapter$2;

    .line 48
    .line 49
    .line 50
    invoke-direct {p3, p0}, Lcom/narvii/checkin/CheckInHistoryAdapter$2;-><init>(Lcom/narvii/checkin/CheckInHistoryAdapter;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p3}, Lcom/narvii/checkin/CheckInHistoryView;->setAfterGetColumnListener(Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;)V

    .line 54
    :cond_0
    return-object p1
.end method

.method public isDataGot()Z
    .locals 1

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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInHistoryAdapter;->isDataGot()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->error:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0ddd

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/checkin/CheckInHelper;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    const-string p2, "Achievements"

    .line 23
    .line 24
    iput-object p2, p1, Lcom/narvii/checkin/CheckInHelper;->source:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInHelper;->startStreakRepairDialog()V

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 33
    move-result p1

    .line 34
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->error:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/checkin/CheckInHistoryAdapter;->sendRequest()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 16
    return-void
.end method

.method public sendRequest()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    const/4 v3, 0x7

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 16
    move-result v4

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    .line 20
    move-result v2

    .line 21
    sub-int/2addr v2, v4

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 25
    move-result v2

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    iget v4, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->mColumn:I

    .line 30
    .line 31
    add-int/lit8 v4, v4, -0x1

    .line 32
    mul-int/2addr v4, v3

    .line 33
    add-int/2addr v2, v4

    .line 34
    .line 35
    iput v2, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->days:I

    .line 36
    .line 37
    const-string v2, "api"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 44
    .line 45
    new-instance v3, Lcom/narvii/checkin/CheckInHelper;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-direct {v3, v4}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 53
    .line 54
    iget v4, p0, Lcom/narvii/checkin/CheckInHistoryAdapter;->days:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4, v0, v1}, Lcom/narvii/checkin/CheckInHelper;->getHistoryRequest(IJ)Lcom/narvii/util/http/ApiRequest;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    new-instance v1, Lcom/narvii/checkin/CheckInHistoryAdapter$1;

    .line 61
    .line 62
    const-class v4, Lcom/narvii/checkin/CheckInHistoryResponse;

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, p0, v4, v3}, Lcom/narvii/checkin/CheckInHistoryAdapter$1;-><init>(Lcom/narvii/checkin/CheckInHistoryAdapter;Ljava/lang/Class;Lcom/narvii/checkin/CheckInHelper;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 69
    return-void
.end method
