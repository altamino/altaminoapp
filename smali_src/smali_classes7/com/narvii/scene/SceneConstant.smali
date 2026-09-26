.class public Lcom/narvii/scene/SceneConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COVER_IMAGE_FILE_NAME:Ljava/lang/String; = "scene_cover_image"

.field public static final COVER_IMAGE_FOLDER:Ljava/lang/String; = "coverImage_only_folder"

.field public static final COVER_IMAGE_HEIGHT:I = 0x500

.field public static final COVER_IMAGE_WIDTH:I = 0x2d0

.field public static final FADE_DURATION:I = 0xfa0

.field public static final MAX_SCENE_LENGTH_MS:I = 0x49443

.field public static final MAX_SCENE_LENGTH_MS_STANDALONE:I = 0x493e0

.field public static final MIN_SCENE_LENGHT_MS:I = 0xbb8

.field public static final MIN_VIDEO_CLIP_MS:I = 0x3e8

.field public static final PREVIEW_VIDEO_FOLDER:Ljava/lang/String; = "preview_only_folder"

.field public static final SCENE_GLOBAL_FILE:Ljava/lang/String; = "scene_global_file"

.field public static final SCENE_INTERMEDIATE_FILE:Ljava/lang/String; = "scene_intermediate_file"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getMaxSceneLengthMs()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->isBasedOnMeishe()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v0, 0x493e0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    const v0, 0x49443

    .line 14
    :goto_0
    return v0
.end method
