.class final Lcom/narvii/influencer/FansOnlyPostMask$1;
.super Ljava/lang/Object;
.source "FansOnlyPostMask.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FansOnlyPostMask;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFansOnlyPostMask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FansOnlyPostMask.kt\ncom/narvii/influencer/FansOnlyPostMask$1\n*L\n1#1,68:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/influencer/FansOnlyPostMask;


# direct methods
.method constructor <init>(Lcom/narvii/influencer/FansOnlyPostMask;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/influencer/FansOnlyPostMask$1;->this$0:Lcom/narvii/influencer/FansOnlyPostMask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/narvii/influencer/FansOnlyPostMask$1;->this$0:Lcom/narvii/influencer/FansOnlyPostMask;

    invoke-virtual {p1}, Lcom/narvii/influencer/FansOnlyPostMask;->getBecomeFansClickListener()Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;->onBecomeFansClicked()V

    :cond_0
    return-void
.end method
