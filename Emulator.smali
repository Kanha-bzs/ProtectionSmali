.class public Lmt/Emulator;
.super Landroid/content/ContentProvider;


# static fields
.field private static rating:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const/4 v0, -0x1

    sput v0, Lmt/Emulator;->rating:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static getProp(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p0, "context"  # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .prologue
    .line 235
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 236
    .local v1, "cl":Ljava/lang/ClassLoader;
    const-string v5, "android.os.SystemProperties"

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 237
    .local v0, "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 238
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    .line 239
    .local v4, "params":[Ljava/lang/Object;
    const/4 v5, 0x0

    const-string v6, "ro.kernel.qemu"

    aput-object v6, v4, v5

    .line 240
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 242
    .end local v0  # "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1  # "cl":Ljava/lang/ClassLoader;
    .end local v3  # "method":Ljava/lang/reflect/Method;
    .end local v4  # "params":[Ljava/lang/Object;
    :goto_26
    return-object v5

    .line 241
    :catch_27
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_26
.end method

.method public static isEmulator(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"  # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 120
    invoke-static {p0}, Lmt/Emulator;->isEmulatorAbsoluly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 224
    :cond_7
    :goto_7
    return v4

    .line 123
    :cond_8
    const/4 v1, 0x0

    .line 124
    .local v1, "newRating":I
    sget v5, Lmt/Emulator;->rating:I

    if-gez v5, :cond_25b

    .line 125
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v6, "sdk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v6, "Andy"

    .line 126
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v6, "ttVM_Hdragon"

    .line 127
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v6, "google_sdk"

    .line 128
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v6, "Droid4X"

    .line 129
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v6, "nox"

    .line 130
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v6, "sdk_x86"

    .line 131
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v6, "sdk_google"

    .line 132
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v6, "vbox86p"

    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v6, "aries"

    .line 134
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 135
    :cond_71
    add-int/lit8 v1, v1, 0x1

    .line 138
    :cond_73
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v6, "unknown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_af

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v6, "Genymotion"

    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_af

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v6, "Andy"

    .line 140
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_af

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v6, "MIT"

    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_af

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v6, "nox"

    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_af

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v6, "TiantianVM"

    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 144
    :cond_af
    add-int/lit8 v1, v1, 0x1

    .line 147
    :cond_b1
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v6, "generic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d9

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v6, "generic_x86"

    .line 148
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d9

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v6, "TTVM"

    .line 149
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d9

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v6, "Andy"

    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_db

    .line 151
    :cond_d9
    add-int/lit8 v1, v1, 0x1

    .line 154
    :cond_db
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "generic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_135

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "generic_x86"

    .line 155
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_135

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "Andy"

    .line 156
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_135

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "ttVM_Hdragon"

    .line 157
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_135

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "Droid4X"

    .line 158
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_135

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "nox"

    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_135

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "generic_x86_64"

    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_135

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "vbox86p"

    .line 161
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_135

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "aries"

    .line 162
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_137

    .line 163
    :cond_135
    add-int/lit8 v1, v1, 0x1

    .line 166
    :cond_137
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "sdk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_187

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "Emulator"

    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_187

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "google_sdk"

    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_187

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "Droid4X"

    .line 169
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_187

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "TiantianVM"

    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_187

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "Andy"

    .line 171
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_187

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "Android SDK built for x86_64"

    .line 172
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_187

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "Android SDK built for x86"

    .line 173
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_189

    .line 174
    :cond_187
    add-int/lit8 v1, v1, 0x1

    .line 177
    :cond_189
    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v6, "goldfish"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b1

    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v6, "vbox86"

    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b1

    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v6, "nox"

    .line 179
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b1

    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v6, "ttVM_x86"

    .line 180
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b3

    .line 181
    :cond_1b1
    add-int/lit8 v1, v1, 0x1

    .line 184
    :cond_1b3
    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v6, "generic/sdk/generic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_203

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v6, "generic_x86/sdk_x86/generic_x86"

    .line 185
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_203

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v6, "Andy"

    .line 186
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_203

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v6, "ttVM_Hdragon"

    .line 187
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_203

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v6, "generic_x86_64"

    .line 188
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_203

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v6, "generic/google_sdk/generic"

    .line 189
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_203

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v6, "vbox86p"

    .line 190
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_203

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v6, "generic/vbox86p/vbox86p"

    .line 191
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_205

    .line 192
    :cond_203
    add-int/lit8 v1, v1, 0x1

    .line 196
    :cond_205
    const/16 v5, 0x1f01

    :try_start_207
    invoke-static {v5}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "opengl":Ljava/lang/String;
    if-eqz v2, :cond_21f

    .line 198
    const-string v5, "Bluestacks"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_21d

    const-string v5, "Translator"

    .line 199
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_21a
    .catch Ljava/lang/Exception; {:try_start_207 .. :try_end_21a} :catch_263

    move-result v5

    if-eqz v5, :cond_21f

    .line 201
    :cond_21d
    add-int/lit8 v1, v1, 0xa

    .line 209
    .end local v2  # "opengl":Ljava/lang/String;
    :cond_21f
    :goto_21f
    :try_start_21f
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "windows"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "BstSharedFolder"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v3, "sharedFolder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_254} :catch_268

    move-result v5

    if-eqz v5, :cond_259

    .line 217
    add-int/lit8 v1, v1, 0xa

    .line 222
    .end local v3  # "sharedFolder":Ljava/io/File;
    :cond_259
    :goto_259
    sput v1, Lmt/Emulator;->rating:I

    .line 224
    :cond_25b
    sget v5, Lmt/Emulator;->rating:I

    const/4 v6, 0x3

    if-gt v5, v6, :cond_7

    const/4 v4, 0x0

    goto/16 :goto_7

    .line 204
    :catch_263
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21f

    .line 219
    .end local v0  # "e":Ljava/lang/Exception;
    :catch_268
    move-exception v0

    .line 220
    .restart local v0  # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_259
.end method

.method public static isEmulatorAbsoluly(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-static {p0}, Lmt/Emulator;->mayOnEmulatorViaQEMU(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 116
    :cond_7
    :goto_7
    return v0

    .line 66
    :cond_8
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "sdk_x86"

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "sdk_google"

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "Andy"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "Droid4X"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "nox"

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "vbox86p"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "aries"

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 76
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Genymotion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Andy"

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "nox"

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "TiantianVM"

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 82
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "Andy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 85
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "Andy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "Droid4X"

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "nox"

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vbox86p"

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "aries"

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 92
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Emulator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "google_sdk"

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Droid4X"

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "TiantianVM"

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Andy"

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Android SDK built for x86_64"

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Android SDK built for x86"

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 101
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "vbox86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "nox"

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "ttVM_x86"

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 106
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "generic/sdk/generic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "generic_x86/sdk_x86/generic_x86"

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "Andy"

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "ttVM_Hdragon"

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "generic/google_sdk/generic"

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "vbox86p"

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "generic/vbox86p/vbox86p"

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 116
    const/4 v0, 0x0

    goto/16 :goto_7
.end method

.method private static mayOnEmulatorViaQEMU(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"  # Landroid/content/Context;

    .prologue
    .line 228
    invoke-static {p0}, Lmt/Emulator;->getProp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "qemu":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selection"  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selectionArgs"  # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"  # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p0}, Lmt/Emulator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmt/Emulator;->isEmulator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 22
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lmt/Emulator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmt/Emulator;->isEmulatorAbsoluly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 25
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .param p1, "uri"  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "projection"  # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selection"  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "selectionArgs"  # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "sortOrder"  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"  # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selection"  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "selectionArgs"  # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method