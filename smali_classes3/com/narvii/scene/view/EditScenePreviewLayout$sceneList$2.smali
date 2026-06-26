.class final Lcom/narvii/scene/view/EditScenePreviewLayout$sceneList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EditScenePreviewLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/EditScenePreviewLayout;-><init>(Lcom/narvii/app/NVContext;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "Lcom/narvii/model/Scene;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditScenePreviewLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditScenePreviewLayout.kt\ncom/narvii/scene/view/EditScenePreviewLayout$sceneList$2\n*L\n1#1,236:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/scene/view/EditScenePreviewLayout$sceneList$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/scene/view/EditScenePreviewLayout$sceneList$2;

    invoke-direct {v0}, Lcom/narvii/scene/view/EditScenePreviewLayout$sceneList$2;-><init>()V

    sput-object v0, Lcom/narvii/scene/view/EditScenePreviewLayout$sceneList$2;->INSTANCE:Lcom/narvii/scene/view/EditScenePreviewLayout$sceneList$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/narvii/scene/view/EditScenePreviewLayout$sceneList$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
