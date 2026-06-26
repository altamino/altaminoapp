.class Lcom/narvii/adapter/NVPagerStatusAdapter$1;
.super Ljava/lang/Object;
.source "NVPagerStatusAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/adapter/NVPagerStatusAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/adapter/NVPagerStatusAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/adapter/NVPagerStatusAdapter;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/narvii/adapter/NVPagerStatusAdapter$1;->this$0:Lcom/narvii/adapter/NVPagerStatusAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 26
    iget-object p1, p0, Lcom/narvii/adapter/NVPagerStatusAdapter$1;->this$0:Lcom/narvii/adapter/NVPagerStatusAdapter;

    invoke-virtual {p1}, Lcom/narvii/adapter/NVPagerStatusAdapter;->onEmptyClickRetry()V

    return-void
.end method
