.class public Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;
.super Lcom/narvii/util/text/DefaultTagClickListener;
.source "DetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/DetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DetailTagClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/DetailAdapter;


# direct methods
.method protected constructor <init>(Lcom/narvii/detail/DetailAdapter;)V
    .locals 0

    .line 1006
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-direct {p0}, Lcom/narvii/util/text/DefaultTagClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected startActivity(Landroid/view/View;Landroid/content/Intent;)V
    .locals 0

    .line 1009
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
