.class public final synthetic Lcom/narvii/scene/template/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/template/CropTemplateImageFragment;

.field public final synthetic b:Lcom/narvii/theme/ThemeImage;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/template/CropTemplateImageFragment;Lcom/narvii/theme/ThemeImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/b;->a:Lcom/narvii/scene/template/CropTemplateImageFragment;

    iput-object p2, p0, Lcom/narvii/scene/template/b;->b:Lcom/narvii/theme/ThemeImage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/template/b;->a:Lcom/narvii/scene/template/CropTemplateImageFragment;

    iget-object v1, p0, Lcom/narvii/scene/template/b;->b:Lcom/narvii/theme/ThemeImage;

    invoke-static {v0, v1}, Lcom/narvii/scene/template/CropTemplateImageFragment$loadSourceImage$1;->b(Lcom/narvii/scene/template/CropTemplateImageFragment;Lcom/narvii/theme/ThemeImage;)V

    return-void
.end method
