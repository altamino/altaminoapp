.class Lcom/narvii/checkin/CheckInHistoryAdapter$2;
.super Ljava/lang/Object;
.source "CheckInHistoryAdapter.java"

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

    .line 156
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$2;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetColumn(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$2;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    invoke-static {v0, p1}, Lcom/narvii/checkin/CheckInHistoryAdapter;->access$502(Lcom/narvii/checkin/CheckInHistoryAdapter;I)I

    .line 160
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryAdapter$2;->this$0:Lcom/narvii/checkin/CheckInHistoryAdapter;

    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInHistoryAdapter;->sendRequest()V

    return-void
.end method
