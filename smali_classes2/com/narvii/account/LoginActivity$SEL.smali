.class Lcom/narvii/account/LoginActivity$SEL;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SEL"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/narvii/account/LoginActivity;)V
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/account/LoginActivity;Lcom/narvii/account/LoginActivity$1;)V
    .locals 0

    .line 813
    invoke-direct {p0, p1}, Lcom/narvii/account/LoginActivity$SEL;-><init>(Lcom/narvii/account/LoginActivity;)V

    return-void
.end method

.method private copy([F)[F
    .locals 3

    .line 815
    array-length v0, p1

    new-array v0, v0, [F

    .line 816
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 822
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_a

    array-length v0, v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 826
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    iget-object v1, v0, Lcom/narvii/account/LoginActivity;->lightMin:[F

    if-nez v1, :cond_2

    .line 829
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v1}, Lcom/narvii/account/LoginActivity$SEL;->copy([F)[F

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/account/LoginActivity;->lightMin:[F

    .line 831
    :cond_2
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    iget-object v1, v0, Lcom/narvii/account/LoginActivity;->lightMax:[F

    if-nez v1, :cond_3

    .line 832
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v1}, Lcom/narvii/account/LoginActivity$SEL;->copy([F)[F

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/account/LoginActivity;->lightMax:[F

    .line 834
    :cond_3
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    iget-object v2, v0, Lcom/narvii/account/LoginActivity;->lightMin:[F

    .line 835
    iget-object v0, v0, Lcom/narvii/account/LoginActivity;->lightMax:[F

    goto :goto_0

    .line 848
    :cond_4
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    iget-object v1, v0, Lcom/narvii/account/LoginActivity;->gyoMin:[F

    if-nez v1, :cond_5

    .line 849
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v1}, Lcom/narvii/account/LoginActivity$SEL;->copy([F)[F

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/account/LoginActivity;->gyoMin:[F

    .line 851
    :cond_5
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    iget-object v1, v0, Lcom/narvii/account/LoginActivity;->gyoMax:[F

    if-nez v1, :cond_6

    .line 852
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v1}, Lcom/narvii/account/LoginActivity$SEL;->copy([F)[F

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/account/LoginActivity;->gyoMax:[F

    .line 854
    :cond_6
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    iget-object v2, v0, Lcom/narvii/account/LoginActivity;->gyoMin:[F

    .line 855
    iget-object v0, v0, Lcom/narvii/account/LoginActivity;->gyoMax:[F

    goto :goto_0

    .line 838
    :cond_7
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    iget-object v1, v0, Lcom/narvii/account/LoginActivity;->accMin:[F

    if-nez v1, :cond_8

    .line 839
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v1}, Lcom/narvii/account/LoginActivity$SEL;->copy([F)[F

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/account/LoginActivity;->accMin:[F

    .line 841
    :cond_8
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    iget-object v1, v0, Lcom/narvii/account/LoginActivity;->accMax:[F

    if-nez v1, :cond_9

    .line 842
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v1}, Lcom/narvii/account/LoginActivity$SEL;->copy([F)[F

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/account/LoginActivity;->accMax:[F

    .line 844
    :cond_9
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$SEL;->this$0:Lcom/narvii/account/LoginActivity;

    iget-object v2, v0, Lcom/narvii/account/LoginActivity;->accMin:[F

    .line 845
    iget-object v0, v0, Lcom/narvii/account/LoginActivity;->accMax:[F

    :goto_0
    const/4 v1, 0x0

    .line 858
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    array-length v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_a

    .line 859
    aget v4, v2, v1

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v2, v1

    .line 860
    aget v4, v0, v1

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    return-void
.end method
