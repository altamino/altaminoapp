.class Lcom/narvii/list/NVAdapter$1;
.super Ljava/lang/Object;
.source "NVAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/NVAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/NVAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/narvii/list/NVAdapter$1;->this$0:Lcom/narvii/list/NVAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/narvii/list/NVAdapter$1;->this$0:Lcom/narvii/list/NVAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/NVAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    return-void
.end method
