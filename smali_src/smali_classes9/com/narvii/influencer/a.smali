.class public final synthetic Lcom/narvii/influencer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/influencer/FansOnlyPostMask;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/influencer/FansOnlyPostMask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/influencer/a;->a:Lcom/narvii/influencer/FansOnlyPostMask;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/influencer/a;->a:Lcom/narvii/influencer/FansOnlyPostMask;

    invoke-static {v0, p1}, Lcom/narvii/influencer/FansOnlyPostMask;->b(Lcom/narvii/influencer/FansOnlyPostMask;Landroid/view/View;)V

    return-void
.end method
