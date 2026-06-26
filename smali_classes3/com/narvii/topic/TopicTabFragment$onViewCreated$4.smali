.class final Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;
.super Ljava/lang/Object;
.source "TopicTabFragment.kt"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/TopicTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;

    invoke-direct {v0}, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;-><init>()V

    sput-object v0, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;->INSTANCE:Lcom/narvii/topic/TopicTabFragment$onViewCreated$4;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 167
    new-instance p2, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4$1;

    invoke-direct {p2, p1}, Lcom/narvii/topic/TopicTabFragment$onViewCreated$4$1;-><init>(Lcom/narvii/widget/NVImageView;)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
