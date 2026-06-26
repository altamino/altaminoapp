.class final Lcom/narvii/topic/adapter/StorySectionAdapter$onNotification$1;
.super Ljava/lang/Object;
.source "StorySectionAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/StorySectionAdapter;->onNotification(Lcom/narvii/notification/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $pos:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/StorySectionAdapter;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$onNotification$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;

    iput-object p2, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$onNotification$1;->$pos:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$onNotification$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;

    iget-object v1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$onNotification$1;->$pos:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
