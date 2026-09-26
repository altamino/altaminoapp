.class Lcom/narvii/checkin/CheckInHistoryAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/checkin/CheckInHistoryView$AfterGetColumnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInHistoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInHistoryAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$2;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGetColumn(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$2;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/checkin/CheckInHistoryAdapter;->k(Lcom/narvii/checkin/CheckInHistoryAdapter;I)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$2;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInHistoryAdapter;->sendRequest()V

    .line 11
    return-void
.end method
