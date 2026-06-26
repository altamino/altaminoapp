.class final Lcom/narvii/topic/widgets/TopicSubscribeView$toolTipHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TopicSubscribeView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/TopicSubscribeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/util/ToolTipHelper;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/topic/widgets/TopicSubscribeView$toolTipHelper$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/topic/widgets/TopicSubscribeView$toolTipHelper$2;

    invoke-direct {v0}, Lcom/narvii/topic/widgets/TopicSubscribeView$toolTipHelper$2;-><init>()V

    sput-object v0, Lcom/narvii/topic/widgets/TopicSubscribeView$toolTipHelper$2;->INSTANCE:Lcom/narvii/topic/widgets/TopicSubscribeView$toolTipHelper$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/util/ToolTipHelper;
    .locals 1

    .line 41
    new-instance v0, Lcom/narvii/util/ToolTipHelper;

    invoke-direct {v0}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicSubscribeView$toolTipHelper$2;->invoke()Lcom/narvii/util/ToolTipHelper;

    move-result-object v0

    return-object v0
.end method
