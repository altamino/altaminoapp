.class public Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;
.super Lcom/narvii/util/text/DefaultTagClickListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/util/text/DefaultTagClickListener;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected startActivity(Landroid/view/View;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;->this$0:Lcom/narvii/detail/DetailAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/narvii/detail/DetailAdapter$DetailTagClickListener;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 6
    return-void
.end method
