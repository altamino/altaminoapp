.class public final synthetic Lcom/narvii/master/setting/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/setting/a;->a:Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;

    iput p2, p0, Lcom/narvii/master/setting/a;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/master/setting/a;->a:Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;

    iget v1, p0, Lcom/narvii/master/setting/a;->b:I

    invoke-static {v0, v1, p1}, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;->f(Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;ILandroid/view/View;)V

    return-void
.end method
