.class public final synthetic Lcom/narvii/video/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/video/BaseViceTimeLineFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/video/BaseViceTimeLineFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/w;->a:Lcom/narvii/video/BaseViceTimeLineFragment;

    iput p2, p0, Lcom/narvii/video/w;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/video/w;->a:Lcom/narvii/video/BaseViceTimeLineFragment;

    iget v1, p0, Lcom/narvii/video/w;->b:I

    invoke-static {v0, v1, p1}, Lcom/narvii/video/BaseViceTimeLineFragment;->B(Lcom/narvii/video/BaseViceTimeLineFragment;ILandroid/view/View;)V

    return-void
.end method
