package cn.spring.goods.util;

import cn.spring.goods.form.GoodsForm;
import com.google.common.base.Charsets;
import com.google.common.io.Files;
import com.google.gson.JsonObject;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by john on 15-12-10.
 */
public class SaveToJsonFile {

    public static void save(String path, List<GoodsForm> list)  {

        File file = new File(path);
        if (file.exists()) {
            file.delete();
        }
        StringBuilder s = new StringBuilder();
        s.append("[\"");
        s.append(list.stream().map(GoodsForm::getName).distinct().collect(
                Collectors.joining("\",\"")
        ));
        s.append("\"]");

        try {
            Files.write(s.toString().getBytes(), new File(path+"auto.json"));
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
